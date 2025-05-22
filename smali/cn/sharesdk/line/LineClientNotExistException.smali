.class public Lcn/sharesdk/line/LineClientNotExistException;
.super Ljava/lang/RuntimeException;
.source "LineClientNotExistException.java"


# static fields
.field public static final MESSAGE:Ljava/lang/String; = "Line for Android is not installed!"

.field private static final serialVersionUID:J = 0x37bd92e0e465cac4L


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Line for Android is not installed!"

    .line 8
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
