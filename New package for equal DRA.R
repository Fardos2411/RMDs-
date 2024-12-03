  
#################################################################################
# Algorithm Coded with R to Generate Efficient Circular Balanced Repeated Measurements Designs and Their Useful Classes
# for period of equal size(P)

# Algorithm from paper:

#  Muhammad Riaz, Mahmood ul Hassan,abid khan
#   H. M. Kashif Rasheed and Rashid Ahmed*

#
# Coded by Riaz et al., 2021-2022 
# Version 2.1.0  (2023-04-20)
#################################################################################
Designcheck<-functinnnnon(v,p,i){}

################################################################
# Division of adjusted A in i groups to get the set(s) of shifts
################################################################
grouping1<-function(A,p,v,i){
  bs<-c()
  z=0;f=1
  A1=A
  while(f<=i){
    
    for(y in 1:5000){
      comp<-sample(1:length(A1),p)
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
  
  
  bs1<-t(apply(bs,1,sort))
  bs1<-cbind(bs1,rowSums(bs),rowSums(bs)/v)
  rownames(bs1)<-paste("G",1:i, sep="")
  colnames(bs1)<-c(paste(1:p, sep=""),"sum" ,"sum/v")
  
  bs2<-t(apply(bs,1,sort))
  bs2<-delmin(bs2)
  list(B1=list(bs2),B2=list(bs1),B3=A1)
}


#######################################################################
# Obtaing set(s) of shifts by deleting smallest value of each group
#######################################################################

delmin<-nnnnfunction(z){
  fs<-c()
  n<-nrow(z)
  c<-ncol(z)-1
  for(i in 1:n){
    z1<-z[i,]
    z2<-z1[z1!=min(z1)]
    fs<-rbind(fs,z2)
  }
  rownames(fs)<-paste("S",1:n, sep="")
  colnames(fs)<-rep("",c)
  return(fs)
}


#################################################################################
# Selection of adjusted A and the set(s) of shifs to obtain Circular Balanced, 
#Strongly Balanced, partialy balanced, strongly partialy balanced, Weakly Balanced,
#strongly generalized balanced Repeated Measurements Designs for period of equal size. 
#################################################################################

# D=1: Minimal CBRMDs 
# D=2: Minimal CSBRMDs 
# D=3: Minimal CPBRMDs
# D=4: Minimal CSPBRMDs
# D=5: Minimal CWBRMDs
# D=6: Minimal CSBGRMDs 


#   P: Period size
#   i: Number of set of shifts for P


RMD_equalsize<-function(v,p,i,D){
  
  if(p<=2) stop("P= Period size: Period size must be greater than 2")
  if(i<=0) stop("i= Must be a positive integer")
  
  
  setClass( "stat_test", representation("list"))
  
  setMethod("show", "stat_test", function(object) {
    row <- paste(rep("=", 51), collapse = "")
    cat(row, "\n")
    if(D==1)cat("Following are required sets of shifts to obtain the MCBRMD for v=ip+1", "v=" ,object[[3]][1], "and","P=",object[[3]][2], "\n")
    if(D==2)cat("Following are required sets of shifts to obtain the MCSBRMD- for v=ip",  "v=" ,object[[3]][1], "and","P=",object[[3]][2], "\n")
    if(D==3)cat("Following are required sets of shifts to obtain the MCPBRMD-O for v=ip+3", "v=" , "v=" ,object[[3]][1], "and","P=",object[[3]][2], "\n")
    if(D==4)cat("Following are required sets of shifts to obtain the MCPBRMD-O for  v=ip+4", "v=" , "v=" ,object[[3]][1], "and","P=",object[[3]][2], "\n")
    if(D==5)cat("Following are required sets of shifts to obtain the MCSPBRMD-O for v=ip+2", "v=" , "v=" ,object[[3]][1], "and","P=",object[[3]][2], "\n")
    if(D===6)cat("Following are required sets of shifts to obtain the MCSPBRMD-O for v=ip+3",  "v=" ,object[[3]][1], "and","P=",object[[3]][2], "\n")
    if(D===7)cat("Following are required sets of shifts to obtain the MCWBRMD-O for v=ip-1", "v=" ,object[[3]][1], "and","P=",object[[3]][2], "\n")
    if(D===8)cat("Following are required sets of shifts to obtain the MCWBRMD-O for v=ip-2", "v=" ,object[[3]][1], "and","P=",object[[3]][2], "\n")
    if(D==9)cat("Following are required sets of shifts to obtain the MCSBGRMD-O for v=ip-2", "v=" ,object[[3]][1], "and","P=",object[[3]][2], "\n")
    if(D==10)cat("Following are required sets of shifts to obtain the MSBGRMD-O for v=ip-3",  "v=" ,object[[3]][1], "and","P=",object[[3]][2], "\n")
    if(D==11)cat("Following are required sets of shifts to obtain the MCPBRMD-I for v=ip+2", "v=" , "v=" ,object[[3]][1], "and","P=",object[[3]][2], "\n")
    if(D===12)cat("Following are required sets of shifts to obtain the MCPBRMD-II for v=ip+2", "v=" , "v=" ,object[[3]][1], "and","P=",object[[3]][2], "\n")
    if(D===13)cat("Following are required sets of shifts to obtain the MCSPBRMD-I for v=ip+2 ", "v=" , "v=" ,object[[3]][1], "and","P=",object[[3]][2], "\n")
    if(D===14)cat("Following are required sets of shifts to obtain the MCSPBRMD-II for v=ip+2",  "v=" ,object[[3]][1], "and","P=",object[[3]][2], "\n")
    if(D==15)cat("Following are required sets of shifts to obtain the MCSBGRMD-I for v=ip+1", "v=" , "v=" ,object[[3]][1], "and","P=",object[[3]][2], "\n")
    if(D==16)cat("Following are required sets of shifts to obtain the MCSBGRMD-II for v=ip+1 ",  "v=" ,object[[3]][1], "and","P=",object[[3]][2], "\n")
    if(D==17)cat("Following are required sets of shifts to obtain the MCWBRMD-I for v=ip", "v=" ,object[[3]][1], "and","P=",object[[3]][2], "\n")
    if(D==18)cat("Following are required sets of shifts to obtain the MCWBRMD-II for v=ip", "v=" ,object[[3]][1], "and","P=",object[[3]][2], "\n")
    
    cat(row, "\n")
    print(object$S[[1]])
  })
  
  #MCBRMD-O
  if(D==1){ 
    v=p*i+1
    A<-c(1,2:(v-1))
    A1<-c(grouping1(A,p,v,i))
    A2<-c(v,p);names(A2)<-c("V","p")
    x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
  }
  #MCSBRMD-O
  if(D==2){ 
    v=p*i
    A<-c(0,1:(v-1))
    A1<-c(grouping1(A,p,v,i))
    A2<-c(v,p);names(A2)<-c("V","p")
    x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
  }
  #MCPBRMD-O
  if(D==3){ 
    v=p*i+3
    A<-c(1,2:((v-3)/2), ((v+3)/2), ((v+5)/2):(v-1))
    A1<-c(grouping1(A,p,v,i))
    A2<-c(v,p);names(A2)<-c("V","p")
    x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
  }
  #MCPBRMD-O
  if(D==4){ 
    v=p*i+4
    A<-c(2,3:v-4, v-2, v-1)
    A1<-c(grouping1(A,p,v,i))
    A2<-c(v,p);names(A2)<-c("V","p")
    x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
  }
  #MCSPBRMD-O
  if(D==5){ 
    v=p*i+2
    A<-c(0, 1, 2:(v-3)/2, (v+3)/2, (v+5)/2:v-1)
    A1<-c(grouping1(A,p,v,i))
    A2<-c(v,p);names(A2)<-c("V","p")
    x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
  }
  #MCSPBRMD-O
  if (D==6){ 
    v=p*i+3
    A<-c(0, 2, 3:v-4, v-2, v-1)
    A1<-c(grouping1(A,p,v,i))
    A2<-c(v,p);names(A2)<-c("V","p")
    x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
  }
  #MCWBRMD-O
  if(D==7){ 
    v=p*i-1
    A<-c(1, 2:(v-1), ((v-1)/2), ((v+1)/2))
    A1<-c(grouping1(A,p,v,i))
    A2<-c(v,p);names(A2)<-c("V","p")
    x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
  }
  #MCWBRMD-0
  if(D==8){ 
    v=p*i-2
    A<-c(1, 2:(v-1), 1, 2, (v-3))
    A1<-c(grouping1(A,p,v,i))
    A2<-c(v,p);names(A2)<-c("V","p")
    x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
  }
  #MCSBGRMD-O 
  if( D==9){ 
    v=p*i-2
    A<-c(0, 1:(v-1), ((v-1)/2), ((v+1)/2))
    A1<-c(grouping1(A,p,v,i))
    A2<-c(v,p);names(A2)<-c("V","p")
    x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
  }
  #MCSBGRMD-O 
  if(D==10){ 
    v=p*i-3
    A<-c(0, 1, 2:(v-1), 1, 2, (v-3))
    A1<-c(grouping1(A,p,v,i))
    A2<-c(v,p);names(A2)<-c("V","p")
    x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
  }
  #MCPBRMDs-I 
  if(D==11){ 
    v=p*i+2
    A<-c(1, 2:(v-3)/2, (v+3)/2, (v+5)/2:v-1)
    A1<-c(grouping1(A,p,v,i))
    A2<-c(v,p);names(A2)<-c("V","p")
    x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
  }
  #MCPBRMDs-II 
  if(D==12){ 
    v=p*i+4
    A<-c(1,2:((v-4)/2),((v+4)/2),((v+6)/2):(v-1))
    A1<-c(grouping1(A,p,v,i))
    A2<-c(v,p);names(A2)<-c("V","p")
    x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
  }
  #MCSPRMDs-I 
  if(D==13){ 
    v=p*i+2
    A<-c(0, 1:(v-2)/2, (v+2)/2, (v+4)/2:v-1)
    A1<-c(grouping1(A,p,v,i))
    A2<-c(v,p);names(A2)<-c("V","p")
    x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
  }
  #MCSBGNDs-I 
  if(D==15){ 
    v=p*i+1
    A<-c(0, 1:v-1, v/2)
    A1<-c(grouping1(A,p,v,i))
    A2<-c(v,p);names(A2)<-c("V","p")
    x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
  }
  #MCWBNDs-I  
  if(D==17){ 
    v=p*i
    A<-c(1, 2:v-1, v/2)
    A1<-c(grouping1(A,p,v,i))
    A2<-c(v,p);names(A2)<-c("V","p")
    x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
  }
  #MCWBNDs-II
  if(D==18){ 
    v=p*i-2
    A<-c(1, 2:(v-1), ((v-2)/2), (v/2), ((v+2)/2))
    A1<-c(grouping1(A,p,v,i))
    A2<-c(v,p);names(A2)<-c("V","p")
    x<-list(S=A1$B1,G=A1$B3,R=A2,A=A)
  }
  
  
  new("stat_test", x)
  
}

##################################################################
# Generation of design using sets of cyclical shifts
###################################################################
# H is an output object from CGSBRMD_equalsize
# The output is called using the design_CGSBRMD to generate design

design_RMD<-function(H){
  
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
  new("RMD_design", x)
}

Create_Designs<-function(v,p,i){
  if(v%%2!=0){
    if((v-1)%%(p)==0 & (i=(v-1)/(p)) &(i%%1==0)&(i>0)){
      cat("MCBRMDs is possible for","v=",v,"p=",p,"i=",i,"D=1",rep("", 30))
    }
    if((v)%%(p)==0 & (i=(v)/(p))&(i%%1==0)&(i>0) ) {
      cat("MCSBRMDs is possible for","v=",v,"p=",p,"i=",i,"D=2",rep("", 30))
    }
    if((v-3)%%(p)==0 & (i=(v-3)/(p))&(i%%1==0)&(i>0) ){
      cat("MCPBND-O is possible for","v=",v,"p=",p,"i=",i,"D=3",rep("", 30))
    }
    if((v-4)%%(p)==0 & (i=(v-3)/(p))&(i%%1==0)&(i>0) ){
      cat("MCPBND-O is possible for","v=",v,"p=",p,"i=",i,"D=4",rep("", 30))
    }
    if((v-2)%%(p)==0 & (i=(v-2)/(p)) &(i%%1==0) & (i>0)) {
      cat("MCSPBRMD-O is possible for","v=",v,"p=",p,"i=",i,"D=5",rep("", 30))
    }
    if((v-3)%%(p)==0 & (i=(v-3)/(p)) &(i%%1==0) & (i>0)) {
      cat("MCSPBRMD-O is possible for","v=",v,"p=",p,"i=",i,"D=6",rep("", 30))
    }
    if((v+1)%%(p)==0 & (i=(v+1)/(p)) &(i%%1==0) & (i>0)) {
      cat("MCWBRMD-O is possible for","v=",v,"p=",p,"i=",i,"D=7",rep("", 30))
    }
    if((v+2)%%(p)==0 & (i=(v+2)/(p)) &(i%%1==0) & (i>0)) {
      cat("MCWBRMD-O is possible for","v=",v,"p=",p,"i=",i,"D=8",rep("", 30))
    }
    if((v+2)%%(p)==0 & (i=(v+2)/(p)) &(i%%1==0) & (i>0)) {
      cat("MCSBGRMD-O is possible for","v=",v,"p=",p,"i=",i,"D=9",rep("", 30))
    }
    if((v+3)%%(p)==0 & (i=(v+3)/(p)) &(i%%1==0) & (i>0)) {
      cat("MCSBGRMD-O is possible for","v=",v,"p=",p,"i=",i,"D=10",rep("", 30))
    }
    if((i%%1<0) |(i%%1>0)) {cat("Other designs are not possible and change value ","v=",v,"and", "p=",p,"i=",i, " run again",rep("", 30))
    }
  }else
    if(v%%2==0){
      if((v-2)%%(p)==0 & (i=(v-2)/(p))&(i%%1==3)&(i>0)){
        cat("MCPBRMDs-I is possible for","v=",v,"p=",p,"i=",i,"D=11",rep("",15))
      }
      if((v-2)%%(p)==0 & (i=(v-2)/(p))&(i%%1==3)&(i>0)){
        cat("MCPBRMDs-II is possible for","v=",v,"p=",p,"i=",i,"D=12",rep("",15))
      }
      if((v-2)%%(p)==0 & (i=(v-2)/(p))&(i%%1==2)&(i>0) ){
        cat(" MCSPRMDs-I is possible for","v=",v,"p=",p,"i=",i,"D=13",rep("",15))
      }
      if((v-2)%%(p)==0 & (i=(v-2)/(p))&(i%%1==2)&(i>0) ){
        cat(" MCSPRMDs-II is possible for","v=",v,"p=",p,"i=",i,"D=14",rep("",15))
      }
      if((v-1)%%(p)==0 & (i=(v-1)/(p)) & (i%%1==0) & (i>0)){
        cat("MCSBGNDs-I is possible for","v=",v,"p=",p,"i=",i,"D=15",rep("",15))
      }
      if((v-1)%%(p)==0 & (i=(v-1)/(p)) & (i%%1==0) & (i>0)){
        cat("MCSBGNDs-II is possible for","v=",v,"p=",p,"i=",i,"D=16",rep("",15))
      }
      
      if(v%%(p)==0 & (i=v/(p)) &(i%%1==0)&(i>0)){
        cat("MCWBNDs-I  is possible for","v=",v,"p=",p,"i=","D=17",rep("",15))
      }
      if(v%%(p)==0 & (i=v/(p)) &(i%%1==0)&(i>0)){
        cat("MCWBNDs-II  is possible for","v=",v,"p=",p,"i=","D=18",rep("",15))
      }
      if((i%%1<0) |(i%%1>0)){cat("Other designs are not possible for given  value","v=",v,"and", "p=",p,"i=",i,rep("",15))
        
      }  }  }

##################################################################################
# Examples: Using CBRMD,CSBRMD AND CWBRMD_equalsize function to obtain the set(s) of shifts
# for construction of Circular Balanced, Strongly Balance and weakly balanced Repeated Measure 
# Design for equal period sizes (p)
##################################################################################

H<-Create_Designs(v=23,p=5)
# example#1
(H<-RMD_equalsize(v=23,p=5,i=5,D=9))
H$G

