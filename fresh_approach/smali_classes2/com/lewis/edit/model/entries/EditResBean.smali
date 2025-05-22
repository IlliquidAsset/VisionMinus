.class public Lcom/lewis/edit/model/entries/EditResBean;
.super Ljava/lang/Object;
.source "EditResBean.java"


# instance fields
.field private isSelect:Z

.field private picResId:I

.field private titleResId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/lewis/edit/model/entries/EditResBean;->picResId:I

    .line 23
    iput p2, p0, Lcom/lewis/edit/model/entries/EditResBean;->titleResId:I

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/lewis/edit/model/entries/EditResBean;->picResId:I

    .line 33
    iput p2, p0, Lcom/lewis/edit/model/entries/EditResBean;->titleResId:I

    .line 34
    iput-boolean p3, p0, Lcom/lewis/edit/model/entries/EditResBean;->isSelect:Z

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/lewis/edit/model/entries/EditResBean;->picResId:I

    .line 18
    iput-boolean p2, p0, Lcom/lewis/edit/model/entries/EditResBean;->isSelect:Z

    return-void
.end method


# virtual methods
.method public getPicResId()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/lewis/edit/model/entries/EditResBean;->picResId:I

    return v0
.end method

.method public getTitleResId()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/lewis/edit/model/entries/EditResBean;->titleResId:I

    if-nez v0, :cond_0

    sget v0, Lcom/lewis/edit/R$string;->empty_string:I

    :cond_0
    return v0
.end method

.method public isSelect()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/lewis/edit/model/entries/EditResBean;->isSelect:Z

    return v0
.end method

.method public setPicResId(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/lewis/edit/model/entries/EditResBean;->picResId:I

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/lewis/edit/model/entries/EditResBean;->isSelect:Z

    return-void
.end method

.method public setTitleResId(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/lewis/edit/model/entries/EditResBean;->titleResId:I

    return-void
.end method
