#cntlm container


Usages examples : 
 * Usage with user interaction to set username, domain and password 
   * `docker run -it --rm --name mycntlm -p 3128 dacr/cntlm`
   * `docker run -it --rm --name mycntlm -p 4128:3128 dacr.cntlm`
   * `docker run -it --rm --name mycntlm -p 3128 -v $(pwd)/mydefaults.conf:/defaults.conf dacr/cntlm`
 * Background usage example :
  * `docker run -d -e USERNAME=x -e DOMAIN=yy -e PASSWORD=zzz -p 3128 dacr/cntlm`

The default ntlm proxy is set to "proxy:8080", override defaults.conf to change this value.

