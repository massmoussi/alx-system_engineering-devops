# kill proccess

exec { 'pkill':
  command => 'pkill => killmenow',
  onlyif  => 'shell',
}
