function fish_user_key_bindings
    bind -M insert -k sright nextd-or-forward-word
    bind -M insert -k sleft prevd-or-backward-word
end

# disable mode prompt, since we render it ourselves in fish_prompt
function fish_mode_prompt
end

function fish_prompt
    # record the status of the last command
    set -l last_status $status

    set -q __fish_git_prompt_showupstream
    or set -g __fish_git_prompt_showupstream auto

    if functions -q fish_is_root_user; and fish_is_root_user
        set_color -o yellow
    else
        set_color -o --bold red
    end

    echo -n $USER
    set_color -o --bold blue
    echo -n @

    if test -z "$SSH_CLIENT"
        set_color -o --bold red
    else
        set_color -o --bold yellow
    end

    echo -n (prompt_hostname)
    set_color -o blue
    # TODO: highlight slashes in path
    echo -n :(prompt_pwd --dir-length=5 --full-length-dirs=5)
    set_color -o green

    # git
    set -l prompt_git (fish_git_prompt '  %s')
    test -n "$prompt_git"
    set_color -o --bold green
    echo -n $prompt_git
    set_color normal

    # new line
    echo

    # background jobs
    for job in (jobs)
        set_color magenta
        echo -n '> '
        set_color brown
        echo $job
    end

    # mode identifier
    if test "$fish_key_bindings" = fish_vi_key_bindings
        or test "$fish_key_bindings" = fish_hybrid_key_bindings
        set -l mode
        switch $fish_bind_mode
            case default
                set mode (set_color --bold blue)NORMAL
            case insert
                set mode (set_color --bold magenta)INSERT
            case replace_one
                set mode (set_color --bold green)REPLACE
                echo '[R]'
            case replace
                set mode (set_color --bold green)REPLACE
            case visual
                set mode (set_color --bold green)VISUAL
        end
        set mode $mode(set_color normal)
        echo -n $mode
    end

    # Show status of last command (only if it's not 0)
    set -l stat
    if test $last_status -ne 0
        set stat (set_color red)" [$last_status]"(set_color normal)
    end

    set_color -o magenta
    echo -n ' ❯ '
    set_color normal
end

function fish_right_prompt
    set_color magenta
    # TODO: highlight colons and slashes in timestamp
    echo (date "+%F %T %z")
end

if status is-interactive
    # commands to run in interactive sessions can go here

    # disable greeting
    set fish_greeting

    # enable vi key bindings
    set -g fish_key_bindings fish_vi_key_bindings
end
