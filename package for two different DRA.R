AF<-function(v,p1,p2,i){
  if(v%%2!=0){
    if((v-1-p2)%%(p1)==0 & (i=(v-1-p2)/(p1)) &(i%%1==0)&(i>0)){
      cat("MCBRMDs is possible with one set of p2","v=",v,"p1=",p1,"p2=",p2,"i=",i,"D=1","sp=1","\n")
    }else
      if((v-1-2*p2)%%(p1)==0 & (i=(v-1-2*p2)/(p1)) &(i%%1==0)&(i>0)){
        cat("MCBRMDs is possible with two set of p2","v=",v,"p1=",p1,"p2=",p2,"i=",i,"D=1","sp=2","\n")
      }
    if((v-p2)%%(p1)==0 & (i=(v-p2)/(p1))&(i%%1==0)&(i>0) ) {
      cat("MCSBRMDs is possible with one set of p2","v=",v,"p1=",p1,"p2=",p2,"i=",i,"D=2","sp=1","\n")
    }else
      if((v-2*p2)%%(p1)==0 & (i=(v-2*p2)/(p1))&(i%%1==0)&(i>0) ) {
        cat("MCSBRMDs is possible with one set of p2","v=",v,"p1=",p1,"p2=",p2,"i=",i,"D=2","sp=2","\n")
      }
    if((v-3-p2)%%(p1)==0 & (i=(v-3-p2)/(p1))&(i%%1==0)&(i>0) ){
      cat("MCPBND-O is possible with one set of p2","v=",v,"p1=",p1,"p2=",p2,"i=",i,"D=3","sp=1","\n")
    }else
      if((v-3-2*p2)%%(p1)==0 & (i=(v-3-2*p2)/(p1))&(i%%1==0)&(i>0) ){
        cat("MCPBND-O is possible for","v=",v,"p1=",p1,"p2=",p2,"i=",i,"D=3","sp=2","\n")
      }
    if((v-4-p2)%%(p1)==0 & (i=(v-3-p2)/(p1))&(i%%1==0)&(i>0) ){
      cat("MCPBND-O is possible with one set of p2","v=",v,"p1=",p1,"p2=",p2,"i=",i,"D=4","sp=1","\n")
    }else
      if((v-4-2*p2)%%(p1)==0 & (i=(v-3-2*p2)/(p1))&(i%%1==0)&(i>0) ){
        cat("MCPBND-O is possible with two set of p2","v=",v,"p1=",p1,"p2=",p2,"i=",i,"D=4","sp=2","\n")
      }
    if((v-2-p2)%%(p1)==0 & (i=(v-2-p2)/(p1)) &(i%%1==0) & (i>0)) {
      cat("MCSPBRMD-O is possible with one set of p2","v=",v,"p1=",p1,"p2=",p2,"i=",i,"D=5","sp=1","\n")
    }else
      if((v-2-2*p2)%%(p1)==0 & (i=(v-2-2*p2)/(p1)) &(i%%1==0) & (i>0)) {
        cat("MCSPBRMD-O is possible with two set of p2","v=",v,"p1=",p1,"p2=",p2,"i=",i,"D=5","sp=2","\n")
      }
    if((v-3-p2)%%(p1)==0 & (i=(v-3-p2)/(p1)) &(i%%1==0) & (i>0)) {
      cat("MCSPBRMD-O is possible with one set of p2","v=",v,"p1=",p1,"p2=",p2,"i=",i,"D=6","sp=1","\n")
    }else
      if((v-3-2*p2)%%(p1)==0 & (i=(v-3-2*p2)/(p1)) &(i%%1==0) & (i>0)) {
        cat("MCSPBRMD-O is possible with two set of p2","v=",v,"p1=",p1,"p2=",p2,"i=",i,"D=6","sp=2","\n")
      }
    if((v+1-p2)%%(p1)==0 & (i=(v+1-p2)/(p1)) &(i%%1==0) & (i>0)) {
      cat("MCWBRMD-O is possible with one set of p2","v=",v,"p1=",p1,"p2=",p2,"i=",i,"D=7","sp=1","\n")
    }else
      if((v+1-2*p2)%%(p1)==0 & (i=(v+1-2*p2)/(p1)) &(i%%1==0) & (i>0)) {
        cat("MCWBRMD-O is possible with two set of p2","v=",v,"p1=",p1,"p2=",p2,"i=",i,"D=7","sp=2","\n")
      }
    if((v+2-p2)%%(p1)==0 & (i=(v+2-p2)/(p1)) &(i%%1==0) & (i>0)) {
      cat("MCWBRMD-O is possible with one set of p2","v=",v,"p1=",p1,"p2=",p2,"i=",i,"D=8","sp=1","\n")
    }else
      if((v+2-2*p2)%%(p1)==0 & (i=(v+2-2*p2)/(p1)) &(i%%1==0) & (i>0)) {
        cat("MCWBRMD-O is possible with two set of p2","v=",v,"p1=",p1,"p2=",p2,"i=",i,"D=8","sp=2","\n")
      }
    if((v+2-p2)%%(p1)==0 & (i=(v+2-p2)/(p1)) &(i%%1==0) & (i>0)) {
      cat("MCSBGRMD-O is p1ossible with one set of p2","v=",v,"p1=",p1,"p2=",p2,"i=",i,"D=9","sp=1","\n")
    }else
      if((v+2-2*p2)%%(p1)==0 & (i=(v+2-2*p2)/(p1)) &(i%%1==0) & (i>0)) {
        cat("MCSBGRMD-O is possible with two set of p2","v=",v,"p1=",p1,"p2=",p2,"i=",i,"D=9","sp=2","\n")
      }
    if((v+3-p2)%%(p1)==0 & (i=(v+3-p2)/(p1)) &(i%%1==0) & (i>0)) {
      cat("MCSBGRMD-O is p1ossible with one set of p2","v=",v,"p1=",p1,"p2=",p2,"i=",i,"D=10","sp=1","\n")
    }else
      if((v+3-2*p2)%%(p1)==0 & (i=(v+3-2*p2)/(p1)) &(i%%1==0) & (i>0)) {
        cat("MCSBGRMD-O is p1ossible with two set of p2","v=",v,"p1=",p1,"p2=",p2,"i=",i,"D=10","sp=2","\n")
      }
    if((i%%1<0) |(i%%1>0)) {cat("Other designs are not possible and change value ","v=",v,"and", "p1=",p1,"i=",i, " run again","\n")
    }
  }else
    if(v%%2==0){
      if((v-2-p2)%%(p1)==0 & (i=(v-2-p2)/(p1))&(i%%1==0)&(i>0)){
        cat("MCPBRMDs-I is possible with one set of p2","v=",v,"p1=",p1,"p2=",p2,"i=",i,"D=11","sp=1","\n")
      }else
        if((v-2-2*p2)%%(p1)==0 & (i=(v-2-2*p2)/(p1))&(i%%1==0)&(i>0)){
          cat("MCPBRMDs-I is possible with two set of p2","v=",v,"p1=",p1,"p2=",p2,"i=",i,"D=11","sp=2","\n")
        }
      if((v-2-p2)%%(p1)==0 & (i=(v-2-p2)/(p1))&(i%%1==0)&(i>0)){
        cat("MCPBRMDs-II is possible with one set of p2","v=",v,"p1=",p1,"p2=",p2,"i=",i,"D=12","sp=1","\n")
      }else
        if((v-2-2*p2)%%(p1)==0 & (i=(v-2-2*p2)/(p1))&(i%%1==0)&(i>0)){
          cat("MCP1BRMDs-II is possible with two set of p2","v=",v,"p1=",p1,"p2=",p2,"i=",i,"D=12","sp=2","\n")
        }
      if((v-2-p2)%%(p1)==0 & (i=(v-2-p2)/(p1))&(i%%1==0)&(i>0) ){
        cat(" MCSP1RMDs-I is possible with one set of p2","v=",v,"p1=",p1,"p2=",p2,"i=",i,"D=13","sp=1","\n")
      }else
        if((v-2-2*p2)%%(p1)==0 & (i=(v-2-2*p2)/(p1))&(i%%1==0)&(i>0) ){
          cat(" MCSPRMDs-I is possible with two set of p2","v=",v,"p1=",p1,"p2=",p2,"i=",i,"D=13","sp=2","\n")
        }
      if((v-2-p2)%%(p1)==0 & (i=(v-2-p2)/(p1))&(i%%1==0)&(i>0) ){
        cat(" MCSPRMDs-II is possible with one set of p2","v=",v,"p1=",p1,"p2=",p2,"i=",i,"D=14","sp=1","\n")
      }else
        if((v-2-2*p2)%%(p1)==0 & (i=(v-2-2*p2)/(p1))&(i%%1==0)&(i>0) ){
          cat(" MCSPRMDs-II is possible with two set of p2","v=",v,"p1=",p1,"p2=",p2,"i=",i,"D=14","sp=2","\n")
        }
      if((v-1-p2)%%(p1)==0 & (i=(v-1-p2)/(p1)) & (i%%1==0) & (i>0)){
        cat("MCSBGNDs-I is p1ossible with one set of p2","v=",v,"p1=",p1,"i=",i,"p2=",p2,"i=",i,"D=15","sp=1","\n")
      }else
        if((v-1-2*p2)%%(p1)==0 & (i=(v-1-2*p2)/(p1)) & (i%%1==0) & (i>0)){
          cat("MCSBGNDs-I is possible with two set of p2","v=",v,"p1=",p1,"i=",i,"p2=",p2,"i=",i,"D=15","sp=2","\n")
        }
      if((v-1-p2)%%(p1)==0 & (i=(v-1-p2)/(p1)) & (i%%1==0) & (i>0)){
        cat("MCSBGNDs-II is possible with one set of p2","v=",v,"p1=",p1,"p2=",p2,"i=",i,"D=16","sp=1","\n")
      }else
        if((v-1-2*p2)%%(p1)==0 & (i=(v-1-2*p2)/(p1)) & (i%%1==0) & (i>0)){
          cat("MCSBGNDs-II is possible with two set of p2","v=",v,"p1=",p1,"p2=",p2,"i=",i,"D=16","sp=2","\n")
        }
      if((v-p2)%%(p1)==0 & (i=(v-p2)/(p1)) &(i%%1==0)&(i>0)){
        cat("MCWBNDs-I  is possible with one set of p2","v=",v,"p1=",p1,"p2=",p2,"i=",i,"D=17","sp=1","\n")
      }else
        if((v-2*p2)%%(p1)==0 & (i=(v-2*p2)/(p1)) &(i%%1==0)&(i>0)){
          cat("MCWBNDs-I  is possible with two set of p2","v=",v,"p1=",p1,"p2=",p2,"i=",i,"D=17","sp=2","\n")
        }
      if((v-p2)%%(p1)==0 & (i=(v-p2)/(p1)) &(i%%1==0)&(i>0)){
        cat("MCWBNDs-II  is possible with one set of p2","v=",v,"p1=",p1,"p2=",p2,"i=",i,"D=18","sp=1","\n")
      }else
        if((v-2*p2)%%(p1)==0 & (i=(v-2*p2)/(p1)) &(i%%1==0)&(i>0)){
          cat("MCWBNDs-II  is possible with two set of p2","v=",v,"p1=",p1,"p2=",p2,"i=",i,"D=18","sp=2","\n")
        }
      if((i%%1<0) |(i%%1>0)){cat("Other designs are not possible for given  value","v=",v,"and", "p1=",p1,"i=",i,"\n")
        
      }  }  }

#################################################################################
# Minimal CBRMD,CSBRMD,CWBRMD-1 and CWBRMD-2_equalsize:Minimal Circular Balanced, 
# Strongly Balanced and Weakly Balanced Repeated Measurements Designs Design 
# for period of two different sizes (p1 and p2)

# Algorithm from paper:

#  Muhammad Riaz, Mahmood ul Hassan, M. H. Tahir, 
# H.M. Kashif Rasheed and Rashid Ahmed*#
# Coded by Riaz et al., 2021-2022 
# Version 2.1.0  (2022-04-20)
#################################################################################



#################################################################################
# Selection of i groups of period size p from adjusted A. The set of remaining 
# (Unselected) elements are saved in the object named as B2. 
#################################################################################
grouping1<-function(A,p,v,i){
  bs<-c()
  z=0;f=1
  A1=A
  while(f<=i){
    
    for(y in 1:5000){
      comp<-sample(1:length(A1),p[1])
      com<-A1[comp]
      cs<-sum(com)
      if(cs%%v==0){
        bs<-rbind(bs,com)
        A1<-A1[-comp]
        z<-z+1
        f=f+1
      }
      if(z==i) break
    }
    if(z<i) {bs<-c();z=0;f=1;A1=A}  
  }
  list(B1=bs,B2=A1)
}

#################################################################################
# Selection of i group of size p1 from adjusted A and division of required 
# number of groups of size p2 from B2. 
#################################################################################
grouping2<-function(A,p,v,i,sp2){
  bs1<-c()
  j=i+sp2
  z=0;f=1
  A1=A
  while(f<=j){
    s<-grouping1(A1,p[1],v,i)
    A2<-s$B2
    z=i;f=f+i
    if(j-z==1){A2<-c(0,A2)}
    for(y in 1:1000){
      comp<-sample(1:length(A2),p[2])
      com<-A2[comp]
      cs<-sum(com)
      if(cs%%v==0){
        bs1<-rbind(bs1,com)
        A2<-A2[-comp]
        z<-z+1
        f=f+1
        if(j-z==1){A2=c(0,A2)}
      }
      if(z==j) break
    }
    
    
    if(z<j) {bs1<-c();z=0;f=1;A1=A}  
    
  }
  
  
  gs1<-t(apply(s$B1,1,sort))
  gs1<-cbind(gs1,rowSums(gs1),rowSums(gs1)/v)
  rownames(gs1)<-paste("G",1:i, sep="")
  colnames(gs1)<-c(paste(1:p[1], sep=""),"sum" ,"sum/v")
  
  gs2<-t(apply(bs1,1,sort))
  gs2<-cbind(gs2,rowSums(gs2),rowSums(gs2)/v)
  rownames(gs2)<-paste("G",(nrow(gs1)+1):(nrow(gs1)+sp2), sep="")
  colnames(gs2)<-c(paste(1:p[2], sep=""),"sum" ,"sum/v")
  
  
  fs1<-t(apply(s$B1,1,sort))
  fs1<-delmin(fs1)
  rownames(fs1)<-paste("S",1:i, sep="")
  colnames(fs1)<-rep("",(p[1])-1)
  
  
  fs2<-t(apply(bs1,1,sort))
  fs2<-delmin(fs2)
  rownames(fs2)<-paste("S",(i+1):(i+sp2), sep="")
  colnames(fs2)<-rep("",(p[2]-1))
  
  list(B1=list(fs1,fs2),B3=list(gs1,gs2),B4=A2)
}

#######################################################################
# Obtaing set(s) of shifts by deleting smallest value of each group
#######################################################################

delmin<-function(z){
  fs<-c()
  n<-nrow(z)
  c<-ncol(z)-1
  for(i in 1:n){
    z1<-z[i,]
    z2<-z1[z1!=min(z1)]
    fs<-rbind(fs,z2)
  }
  return(fs)
}

#################################################################################
# Selection of adjusted A and the set(s) of shifs to obtain Circular Balanced, Strongly Balanced and Weakly Balanced 
# Repeated Measurements Designs for period of two different sizes. 
#################################################################################

# D=1: Minimal CBRMDs 
# D=2: Minimal CSBRMDs 
# D=3: Minimal CPBRMDs-I
# D=4: Minimal CPBRMDs-II 
# D=5: Minimal CWBRMDs-I
# D=6: Minimal CSBGRMDs-I 
# D=7: Minimal CSPBRMDs-I
# D=8: Minimal CSPBRMDs-II 
#   p: Vector of three different period sizes 
#   i: Number of sets of shifts for p1
# Sp2: Number of sets of shifts for p2

RMD_2diffsize<-function(v,p,i,D=1,sp=1){
  
  if(length(p)>2 | length(p)<2){stop("Must be length(p)=2 ")}
  if(any(p<=2)!=0) stop("p=Period sizes: Each period size must be greater than 2")
  if(i<=0) stop("i= Must be a positive integer")
  if(p[1]==p[2]) stop("Must be fullfill this condition: p1 not equal to p2")
  setClass( "stat_test", representation("list"))
  setMethod("show", "stat_test", function(object) {
    row <- paste(rep("=", 51), collapse = "")
    cat(row, "\n")
    if(D==1)cat("Following are required sets of shifts to obtain the MCBRMD for v=ip+1", "v=" ,object$R[1], ",","p1=",object$R[2],"and","p2=",object$R[3], "\n")
    if(D==2)cat("Following are required sets of shifts to obtain the MCSBRMD- for v=ip", "v=" ,object$R[1], ",","p1=",object$R[2],"and","p2=",object$R[3], "\n")
    if(D==3)cat("Following are required sets of shifts to obtain the MCPBRMD-O for v=ip+3", "v=" ,object$R[1], ",","p1=",object$R[2],"and","p2=",object$R[3],"\n")
    if(D==4)cat("Following are required sets of shifts to obtain the MCPBRMD-O for  v=ip+4", "v=" ,object$R[1], ",","p1=",object$R[2],"and","p2=",object$R[3], "\n")
    if(D==5)cat("Following are required sets of shifts to obtain the MCSPBRMD-O for v=ip+2", "v=" ,object$R[1], ",","p1=",object$R[2],"and","p2=",object$R[3],"\n")
    if(D==6)cat("Following are required sets of shifts to obtain the MCSPBRMD-O for v=ip+3",  "v=" ,object$R[1], ",","p1=",object$R[2],"and","p2=",object$R[3], "\n")
    if(D==7)cat("Following are required sets of shifts to obtain the MCWBRMD-O for v=ip-1", "v=" ,object$R[1], ",","p1=",object$R[2],"and","p2=",object$R[3], "\n")
    if(D==8)cat("Following are required sets of shifts to obtain the MCWBRMD-O for v=ip-2", "v=" ,object$R[1], ",","p1=",object$R[2],"and","p2=",object$R[3], "\n")
    if(D==9)cat("Following are required sets of shifts to obtain the MCSBGRMD-O for v=ip-2", "v=" ,object$R[1], ",","p1=",object$R[2],"and","p2=",object$R[3], "\n")
    if(D==10)cat("Following are required sets of shifts to obtain the MSBGRMD-O for v=ip-3",  "v=" ,object$R[1], ",","p1=",object$R[2],"and","p2=",object$R[3],"\n")
    if(D==11)cat("Following are required sets of shifts to obtain the MCPBRMD-I for v=ip+2",  "v=" ,object$R[1], ",","p1=",object$R[2],"and","p2=",object$R[3], "\n")
    if(D==12)cat("Following are required sets of shifts to obtain the MCPBRMD-II for v=ip+2",  "v=" ,object$R[1], ",","p1=",object$R[2],"and","p2=",object$R[3],"\n")
    if(D==13)cat("Following are required sets of shifts to obtain the MCSPBRMD-I for v=ip+2 ", "v=" ,object$R[1], ",","p1=",object$R[2],"and","p2=",object$R[3], "\n")
    if(D==14)cat("Following are required sets of shifts to obtain the MCSPBRMD-II for v=ip+2", "v=" ,object$R[1], ",","p1=",object$R[2],"and","p2=",object$R[3], "\n")
    if(D==15)cat("Following are required sets of shifts to obtain the MCSBGRMD-I for v=ip+1", "v=" ,object$R[1], ",","p1=",object$R[2],"and","p2=",object$R[3], "\n")
    if(D==16)cat("Following are required sets of shifts to obtain the MCSBGRMD-II for v=ip+1 ",  "v=" ,object$R[1], ",","p1=",object$R[2],"and","p2=",object$R[3],"\n")
    if(D==17)cat("Following are required sets of shifts to obtain the MCWBRMD-I for v=ip", "v=" ,object$R[1], ",","p1=",object$R[2],"and","p2=",object$R[3], "\n")
    if(D==18)cat("Following are required sets of shifts to obtain the MCWBRMD-II for v=ip", "v=" ,object$R[1], ",","p1=",object$R[2],"and","p2=",object$R[3], "\n")
    
    print(object$S[[1]])
    cat("\n")
    print(object$S[[2]])
  })
  
  if(sp==1){
    #MCBRMD-O
    if(D==1){ 
      v=p[1]*i+p[2]+1
      A<-c(1,2:(v-1))
      A1<-c(grouping2(A,p,v,i,sp))
      A2<-c(v,p);names(A2)<-c("V","p1","p2")
      x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
    }
    #MCSBRMD-O
    if(D==2){ 
      v=p[1]*i+p[2]
      A<-c(0,1:(v-1))
      A1<-c(grouping2(A,p,v,i,sp))
      A2<-c(v,p);names(A2)<-c("V","p1","p2")
      x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
    }
    #MCPBRMD-O
    if(D==3){ 
      v=p[1]*i+p[2]+3
      A<-c(1,2:((v-3)/2), ((v+3)/2), ((v+5)/2):(v-1))
      A1<-c(grouping2(A,p,v,i,sp))
      A2<-c(v,p);names(A2)<-c("V","p1","p2")
      x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
    }
    #MCPBRMD-O
    if(D==4){ 
      v=p[1]*i+p[2]+4
      A<-c(2,3:(v-4), (v-2), (v-1))
      A1<-c(grouping2(A,p,v,i,sp))
      A2<-c(v,p);names(A2)<-c("V","p1","p2")
      x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
    }
    #MCSPBRMD-O
    if(D==5){ 
      v=p[1]*i+p[2]+2
      A<-c(0, 1, 2:((v-3)/2), ((v+3)/2), ((v+5)/2):(v-1))
      A1<-c(grouping2(A,p,v,i,sp))
      A2<-c(v,p);names(A2)<-c("V","p1","p2")
      x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
    }
    #MCSPBRMD-O
    if (D==6){ 
      v=p[1]*i+p[2]+3
      A<-c(0, 2, 3:(v-4), (v-2), (v-1))
      A1<-c(grouping2(A,p,v,i,sp))
      A2<-c(v,p);names(A2)<-c("V","p1","p2")
      x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
    }
    #MCWBRMD-O
    if(D==7){ 
      v=p[1]*i+p[2]-1
      A<-c(1, 2:(v-1), ((v-1)/2), ((v+1)/2))
      A1<-c(grouping2(A,p,v,i,sp))
      A2<-c(v,p);names(A2)<-c("V","p1","p2")
      x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
    }
    #MCWBRMD-0
    if(D==8){ 
      v=p[1]*i+p[2]-2
      A<-c(1, 2:(v-1), 1, 2, (v-3))
      A1<-c(grouping2(A,p,v,i,sp))
      A2<-c(v,p);names(A2)<-c("V","p1","p2")
      x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
    }
    #MCSBGRMD-O 
    if( D==9){ 
      v=p[1]*i+p[2]-2
      A<-c(0, 1:(v-1), ((v-1)/2), ((v+1)/2))
      A1<-c(grouping2(A,p,v,i,sp))
      A2<-c(v,p);names(A2)<-c("V","p1","p2")
      x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
    }
    #MCSBGRMD-O 
    if(D==10){ 
      v=p[1]*i+p[2]-3
      A<-c(0, 1, 2:(v-1), 1, 2, (v-3))
      A1<-c(grouping2(A,p,v,i,sp))
      A2<-c(v,p);names(A2)<-c("V","p1","p2")
      x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
    }
    #MCPBRMDs-I 
    if(D==11){ 
      v=p[1]*i+p[2]+2
      A<-c(1, 2:((v-3)/2), ((v+3)/2), ((v+5)/2):(v-1))
      A1<-c(grouping2(A,p,v,i,sp))
      A2<-c(v,p);names(A2)<-c("V","p1","p2")
      x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
    }
    #MCPBRMDs-II 
    if(D==12){ 
      v=p[1]*i+p[2]+4
      A<-c(1,2:((v-4)/2),((v+4)/2),((v+6)/2):(v-1))
      A1<-c(grouping2(A,p,v,i,sp))
      A2<-c(v,p);names(A2)<-c("V","p1","p2")
      x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
    }
    #MCSPRMDs-I 
    if(D==13){ 
      v=p[1]*i+p[2]+2
      A<-c(0, 1:((v-2)/2), ((v+2)/2), ((v+4)/2):(v-1))
      A1<-c(grouping2(A,p,v,i,sp))
      A2<-c(v,p);names(A2)<-c("V","p1","p2")
      x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
    }
    #MCSBGNDs-I 
    if(D==15){ 
      v=p[1]*i+p[2]+1
      A<-c(0, 1:(v-1), (v/2))
      A1<-c(grouping2(A,p,v,i,sp))
      A2<-c(v,p);names(A2)<-c("V","p1","p2")
      x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
    }
    #MCWBNDs-I  
    if(D==17){ 
      v=p[1]*i+p[2]
      A<-c(1, 2:(v-1), (v/2))
      A1<-c(grouping2(A,p,v,i,sp))
      A2<-c(v,p);names(A2)<-c("V","p1","p2")
      x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
    }
    #MCWBNDs-II
    if(D==18){ 
      v=p[1]*i+p[2]-2
      A<-c(1, 2:(v-1), ((v-2)/2), (v/2), ((v+2)/2))
      A1<-c(grouping2(A,p,v,i,sp))
      A2<-c(v,p);names(A2)<-c("V","p1","p2")
      x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
    }
  }
  if(sp==2){
    #MCBRMD-O
    if(D==1){ 
      v=p[1]*i+2*p[2]+1
      A<-c(1,2:(v-1))
      A1<-c(grouping2(A,p,v,i,sp))
      A2<-c(v,p);names(A2)<-c("V","p1","p2")
      x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
    }
    #MCSBRMD-O
    if(D==2){ 
      v=p[1]*i+2*p[2]
      A<-c(0,1:(v-1))
      A1<-c(grouping2(A,p,v,i,sp))
      A2<-c(v,p);names(A2)<-c("V","p1","p2")
      x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
    }
    #MCPBRMD-O
    if(D==3){ 
      v=p[1]*i+2*p[2]+3
      A<-c(1,2:((v-3)/2), ((v+3)/2), ((v+5)/2):(v-1))
      A1<-c(grouping2(A,p,v,i,sp))
      A2<-c(v,p);names(A2)<-c("V","p1","p2")
      x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
    }
    #MCPBRMD-O
    if(D==4){ 
      v=p[1]*i+2*p[2]+4
      A<-c(2,3:(v-4), (v-2), (v-1))
      A1<-c(grouping2(A,p,v,i,sp))
      A2<-c(v,p);names(A2)<-c("V","p1","p2")
      x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
    }
    #MCSPBRMD-O
    if(D==5){ 
      v=p[1]*i+2*p[2]+2
      A<-c(0, 1, 2:((v-3)/2), ((v+3)/2), ((v+5)/2):(v-1))
      A1<-c(grouping2(A,p,v,i,sp))
      A2<-c(v,p);names(A2)<-c("V","p1","p2")
      x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
    }
    #MCSPBRMD-O
    if (D==6){ 
      v=p[1]*i+2*p[2]+3
      A<-c(0, 2, 3:(v-4), (v-2), (v-1))
      A1<-c(grouping2(A,p,v,i,sp))
      A2<-c(v,p);names(A2)<-c("V","p1","p2")
      x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
    }
    #MCWBRMD-O
    if(D==7){ 
      v=p[1]*i+2*p[2]-1
      A<-c(1, 2:(v-1), ((v-1)/2), ((v+1)/2))
      A1<-c(grouping2(A,p,v,i,sp))
      A2<-c(v,p);names(A2)<-c("V","p1","p2")
      x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
    }
    #MCWBRMD-0
    if(D==8){ 
      v=p[1]*i+2*p[2]-2
      A<-c(1, 2:(v-1), 1, 2, (v-3))
      A1<-c(grouping2(A,p,v,i,sp))
      A2<-c(v,p);names(A2)<-c("V","p1","p2")
      x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
    }
    #MCSBGRMD-O 
    if( D==9){ 
      v=p[1]*i+2*p[2]-2
      A<-c(0, 1:(v-1), ((v-1)/2), ((v+1)/2))
      A1<-c(grouping2(A,p,v,i,sp))
      A2<-c(v,p);names(A2)<-c("V","p1","p2")
      x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
    }
    #MCSBGRMD-O 
    if(D==10){ 
      v=p[1]*i+2*p[2]-3
      A<-c(0, 1, 2:(v-1), 1, 2, (v-3))
      A1<-c(grouping2(A,p,v,i,sp))
      A2<-c(v,p);names(A2)<-c("V","p1","p2")
      x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
    }
    #MCPBRMDs-I 
    if(D==11){ 
      v=p[1]*i+2*p[2]+2
      A<-c(1, 2:((v-3)/2), ((v+3)/2), ((v+5)/2):(v-1))
      A1<-c(grouping2(A,p,v,i,sp))
      A2<-c(v,p);names(A2)<-c("V","p1","p2")
      x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
    }
    #MCPBRMDs-II 
    if(D==12){ 
      v=p[1]*i+2*p[2]+4
      A<-c(1,2:((v-4)/2),((v+4)/2),((v+6)/2):(v-1))
      A1<-c(grouping2(A,p,v,i,sp))
      A2<-c(v,p);names(A2)<-c("V","p1","p2")
      x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
    }
    #MCSPRMDs-I 
    if(D==13){ 
      v=p[1]*i+2*p[2]+2
      A<-c(0, 1:((v-2)/2), ((v+2)/2), ((v+4)/2):(v-1))
      A1<-c(grouping2(A,p,v,i,sp))
      A2<-c(v,p);names(A2)<-c("V","p1","p2")
      x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
    }
    #MCSBGNDs-I 
    if(D==15){ 
      v=p[1]*i+2*p[2]+1
      A<-c(0, 1:(v-1), (v/2))
      A1<-c(grouping2(A,p,v,i,sp))
      A2<-c(v,p);names(A2)<-c("V","p1","p2")
      x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
    }
    #MCWBNDs-I  
    if(D==17){ 
      v=p[1]*i+2*p[2]
      A<-c(1, 2:(v-1), (v/2))
      A1<-c(grouping2(A,p,v,i,sp))
      A2<-c(v,p);names(A2)<-c("V","p1","p2")
      x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
    }
    #MCWBNDs-II
    if(D==18){ 
      v=p[1]*i+2*p[2]-2
      A<-c(1, 2:(v-1), ((v-2)/2), (v/2), ((v+2)/2))
      A1<-c(grouping2(A,p,v,i,sp))
      A2<-c(v,p);names(A2)<-c("V","p1","p2")
      x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
    }
  }
  
  
  new("stat_test", x) 
} 

##################################################################
# Generation of design using sets of cyclical shifts
###################################################################
# H is an output object from CGSBRMD_equalsize
# The output is called using the design_CGSBRMD to generate design
design_CGSBRMD<-function(H){
  
  setClass( "CGSBRMD_design", representation("list"))
  setMethod("show", "CGSBRMD_design", function(object) {
    row <- paste(rep("=", 51), collapse = "")
    cat(row, "\n")
    cat("Following is minimal CGSBRMD for", "v=" ,object$R[1], "and","p=",object$R[2], "\n")
    row <- paste(rep("=", 51), collapse = "")
    cat(row, "\n")
    for(i in 1:length(ss)){
      W<-ss[[i]]
      nr<-dim(W)[1]
      for(j in 1:nr){
        print(object$Design[[i]][[j]])
        cat("\n\n")
      }}
  })  
  
  v<-H$R[1]
  p<-H$R[2]
  ss<-H$S  
  treat<-(1:v)-1
  fn<-(1:v)
  G<-list()
  
  
  for(j in 1:length(ss)){ 
    W<-ss[[j]]
    nr<-dim(W)[1]
    nc<-dim(W)[2]
    D<-list()
    
    for(i in 1:nr){
      dd<-c()
      d1<-matrix(treat,(nc+1),v,byrow = T)
      ss1<-cumsum(c(0,W[i,]))
      dd2<-d1+ss1
      dd<-rbind(dd,dd2)
      rr<-dd[which(dd>=v)]%%v
      dd[which(dd>=v)]<-rr
      colnames(dd)<-paste("B",fn, sep="")
      rownames(dd)<-rep("",(nc+1))
      fn<-fn+v
      D[[i]]<-dd
    }
    G[[j]]<-D
    
  }
  
  x<-list(Design=G,R=H$R)
  new("CGSBRMD_design", x)
}

###############################################################################
# Examples: Using CBRMD,CSBRMD AND CWBRMD_equalsize function to obtain the set(s) of shifts
# for construction of Circular Balanced, Strongly Balance and weakly balanced Repeated Measure 
# Design for period of two different sizes (p1 and p2)
###############################################################################
  


#Example
(H<-AF(v=23,p1=5,p2=6))

(H<-RMD_2diffsize(p=c(5,6),v=23,i=4,D=10,sp=1))
H$G
