.class public Lcom/powervision/base/warning/HoverMessage;
.super Ljava/lang/Object;
.source "HoverMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/warning/HoverMessage$WarningType;
    }
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private firstAdd:Z

.field private groundColor:I

.field private hintTime:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/powervision/base/warning/HoverMessage;->groundColor:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/powervision/base/warning/HoverMessage;->groundColor:I

    .line 59
    iput p1, p0, Lcom/powervision/base/warning/HoverMessage;->type:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/powervision/base/warning/HoverMessage;->groundColor:I

    .line 63
    iput p1, p0, Lcom/powervision/base/warning/HoverMessage;->type:I

    .line 64
    iput-object p2, p0, Lcom/powervision/base/warning/HoverMessage;->content:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/powervision/base/warning/HoverMessage;->groundColor:I

    .line 68
    iput p1, p0, Lcom/powervision/base/warning/HoverMessage;->type:I

    .line 69
    iput-object p2, p0, Lcom/powervision/base/warning/HoverMessage;->content:Ljava/lang/String;

    .line 70
    iput p3, p0, Lcom/powervision/base/warning/HoverMessage;->groundColor:I

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/powervision/base/warning/HoverMessage;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getGroundColor()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/powervision/base/warning/HoverMessage;->groundColor:I

    return v0
.end method

.method public getHintTime()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/powervision/base/warning/HoverMessage;->hintTime:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getType()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/powervision/base/warning/HoverMessage;->type:I

    return v0
.end method

.method public isFirstAdd()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/powervision/base/warning/HoverMessage;->firstAdd:Z

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/powervision/base/warning/HoverMessage;->content:Ljava/lang/String;

    return-void
.end method

.method public setFirstAdd(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/powervision/base/warning/HoverMessage;->firstAdd:Z

    return-void
.end method

.method public setGroundColor(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/powervision/base/warning/HoverMessage;->groundColor:I

    return-void
.end method

.method public setHintTime(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/powervision/base/warning/HoverMessage;->hintTime:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/powervision/base/warning/HoverMessage;->type:I

    return-void
.end method
