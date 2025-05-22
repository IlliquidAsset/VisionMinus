.class public Lcom/leon/channel/common/V1SchemeUtil$ChannelExistException;
.super Ljava/lang/Exception;
.source "V1SchemeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leon/channel/common/V1SchemeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChannelExistException"
.end annotation


# static fields
.field static final serialVersionUID:J = -0x2f02e0c1e5c4e33dL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 334
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 338
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
