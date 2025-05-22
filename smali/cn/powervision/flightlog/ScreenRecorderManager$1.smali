.class Lcn/powervision/flightlog/ScreenRecorderManager$1;
.super Landroid/media/projection/MediaProjection$Callback;
.source "ScreenRecorderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/powervision/flightlog/ScreenRecorderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/flightlog/ScreenRecorderManager;


# direct methods
.method constructor <init>(Lcn/powervision/flightlog/ScreenRecorderManager;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcn/powervision/flightlog/ScreenRecorderManager$1;->this$0:Lcn/powervision/flightlog/ScreenRecorderManager;

    invoke-direct {p0}, Landroid/media/projection/MediaProjection$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager$1;->this$0:Lcn/powervision/flightlog/ScreenRecorderManager;

    invoke-virtual {v0}, Lcn/powervision/flightlog/ScreenRecorderManager;->quit()V

    return-void
.end method
