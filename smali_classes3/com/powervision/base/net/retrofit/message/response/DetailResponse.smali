.class public Lcom/powervision/base/net/retrofit/message/response/DetailResponse;
.super Lcom/powervision/base/net/retrofit/message/response/BaseResponse;
.source "DetailResponse.java"


# instance fields
.field public data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/base/net/retrofit/message/response/MessageDetailBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/powervision/base/net/retrofit/message/response/BaseResponse;-><init>()V

    return-void
.end method
