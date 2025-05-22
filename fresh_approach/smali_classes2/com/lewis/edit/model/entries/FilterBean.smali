.class public Lcom/lewis/edit/model/entries/FilterBean;
.super Ljava/lang/Object;
.source "FilterBean.java"


# instance fields
.field private isSelect:Z

.field private picResId:I

.field private titleStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/lewis/edit/model/entries/FilterBean;->picResId:I

    .line 13
    iput-object p2, p0, Lcom/lewis/edit/model/entries/FilterBean;->titleStr:Ljava/lang/String;

    .line 14
    iput-boolean p3, p0, Lcom/lewis/edit/model/entries/FilterBean;->isSelect:Z

    return-void
.end method


# virtual methods
.method public getPicResId()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/lewis/edit/model/entries/FilterBean;->picResId:I

    return v0
.end method

.method public getTitleStr()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/lewis/edit/model/entries/FilterBean;->titleStr:Ljava/lang/String;

    return-object v0
.end method

.method public isSelect()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/lewis/edit/model/entries/FilterBean;->isSelect:Z

    return v0
.end method

.method public setPicResId(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/lewis/edit/model/entries/FilterBean;->picResId:I

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/lewis/edit/model/entries/FilterBean;->isSelect:Z

    return-void
.end method

.method public setTitleStr(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/lewis/edit/model/entries/FilterBean;->titleStr:Ljava/lang/String;

    return-void
.end method
