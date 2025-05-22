.class public Lcom/powervision/gcs/model/ship/ShipWarning;
.super Ljava/lang/Object;
.source "ShipWarning.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/model/ship/ShipWarning$WarningType;
    }
.end annotation


# instance fields
.field private message:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/powervision/gcs/model/ship/ShipWarning;->type:I

    .line 19
    iput-object p2, p0, Lcom/powervision/gcs/model/ship/ShipWarning;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/powervision/gcs/model/ship/ShipWarning;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/powervision/gcs/model/ship/ShipWarning;->type:I

    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/powervision/gcs/model/ship/ShipWarning;->message:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/powervision/gcs/model/ship/ShipWarning;->type:I

    return-void
.end method
