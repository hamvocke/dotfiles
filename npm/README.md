# npm

I wish I didn't need dotfiles for a package manager but here we are.

NPM is an ecosystem that's ripe with high-profile supply chain attacks. NPM's
default behavior is pretty permissive, allowing to run post-install scripts for
legacy reasons. Paired with the node ecosystem's fixation on updating
dependencies the second an update drops, this creates a pretty nasty attack
vector if you use npm.

This config stops npm from running post-install scripts and sets a minimum
release age.

