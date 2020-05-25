source ~/.bashrc

# export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export PATH="$HOME/.cargo/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/pascalpoizat/.sdkman"
[[ -s "/Users/pascalpoizat/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/pascalpoizat/.sdkman/bin/sdkman-init.sh"
