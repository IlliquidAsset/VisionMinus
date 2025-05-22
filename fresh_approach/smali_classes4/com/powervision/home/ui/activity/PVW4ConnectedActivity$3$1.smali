.class Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$3$1;
.super Ljava/lang/Object;
.source "PVW4ConnectedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$3;->askForTethering()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$3;


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$3;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$3$1;->this$1:Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$3$1;->this$1:Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$3;

    iget-object v0, v0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$3;->this$0:Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;

    invoke-virtual {v0}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->finish()V

    return-void
.end method
