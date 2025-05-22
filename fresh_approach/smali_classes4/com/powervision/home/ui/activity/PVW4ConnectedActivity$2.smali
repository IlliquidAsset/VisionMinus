.class Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$2;
.super Ljava/lang/Object;
.source "PVW4ConnectedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$2;->this$0:Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 131
    iget-object p1, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$2;->this$0:Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;

    invoke-virtual {p1}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->onBackPressed()V

    return-void
.end method
