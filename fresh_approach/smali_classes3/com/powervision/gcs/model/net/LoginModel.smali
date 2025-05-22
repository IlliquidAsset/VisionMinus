.class public Lcom/powervision/gcs/model/net/LoginModel;
.super Ljava/lang/Object;
.source "LoginModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/model/net/LoginModel$LoginData;
    }
.end annotation


# instance fields
.field public expire:J

.field public token:Ljava/lang/String;

.field public user:Lcom/powervision/gcs/model/net/LoginModel$LoginData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
