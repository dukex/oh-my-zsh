# Rails 3 aliases, backwards-compatible with Rails 2.

function _rails_command () {
  if [ -e "script/server" ]; then
    ruby script/$@
  else
    ruby script/rails $@
  fi
}

alias rc='_rails_command console'
alias rd='_rails_command destroy'
alias rdb='_rails_command dbconsole'
alias rdbm='rake db:migrate db:test:clone'
alias rg='_rails_command generate'
alias rgm='_rails_command generate migration'
alias rp='_rails_command plugin'
alias ru='_rails_command runner'
alias rs='_rails_command server'
alias rsd='_rails_command server --debugger'
alias devlog='tail -f log/development.log'
alias rdm='rake db:migrate'
alias rdr='rake db:rollback'
alias reset='rake db:reset db:test:prepare db:bootstrap'
alias -g RET='RAILS_ENV=test'
alias -g REP='RAILS_ENV=production'
alias -g RED='RAILS_ENV=development'
>>>>>>> b6ea876971b2270a2c73a07a6f6a337604132c6f
