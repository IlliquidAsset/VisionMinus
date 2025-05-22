.class public Lcn/powervision/flightlog/RecordingScreenService$MyBind;
.super Landroid/os/Binder;
.source "RecordingScreenService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/powervision/flightlog/RecordingScreenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyBind"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/flightlog/RecordingScreenService;


# direct methods
.method public constructor <init>(Lcn/powervision/flightlog/RecordingScreenService;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcn/powervision/flightlog/RecordingScreenService$MyBind;->this$0:Lcn/powervision/flightlog/RecordingScreenService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcn/powervision/flightlog/RecordingScreenService;
    .locals 1

    .line 34
    iget-object v0, p0, Lcn/powervision/flightlog/RecordingScreenService$MyBind;->this$0:Lcn/powervision/flightlog/RecordingScreenService;

    return-object v0
.end method
