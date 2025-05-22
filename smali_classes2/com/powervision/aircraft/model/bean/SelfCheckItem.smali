.class public Lcom/powervision/aircraft/model/bean/SelfCheckItem;
.super Ljava/lang/Object;
.source "SelfCheckItem.java"


# instance fields
.field private customKey:I

.field private drawIcon:I

.field private isError:Z

.field isExpand:Z

.field private isLargeInterference:Z

.field private isNeedCalibration:Z

.field isTempWarn:Z

.field private title:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->isError:Z

    return-void
.end method


# virtual methods
.method public getCustomKey()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->customKey:I

    return v0
.end method

.method public getDrawIcon()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->drawIcon:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isError()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->isError:Z

    return v0
.end method

.method public isExpand()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->isExpand:Z

    return v0
.end method

.method public isLargeInterference()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->isLargeInterference:Z

    return v0
.end method

.method public isNeedCalibration()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->isNeedCalibration:Z

    return v0
.end method

.method public isTempWarn()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->isTempWarn:Z

    return v0
.end method

.method public setCustomKey(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->customKey:I

    return-void
.end method

.method public setDrawIcon(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->drawIcon:I

    return-void
.end method

.method public setError(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->isError:Z

    return-void
.end method

.method public setExpand(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->isExpand:Z

    return-void
.end method

.method public setLargeInterference(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->isLargeInterference:Z

    return-void
.end method

.method public setNeedCalibration(Z)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->isNeedCalibration:Z

    return-void
.end method

.method public setTempWarn(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->isTempWarn:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->title:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/powervision/aircraft/model/bean/SelfCheckItem;->value:Ljava/lang/String;

    return-void
.end method
