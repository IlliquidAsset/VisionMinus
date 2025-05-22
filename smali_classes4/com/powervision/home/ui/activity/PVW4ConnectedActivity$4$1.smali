.class Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$4$1;
.super Ljava/lang/Object;
.source "PVW4ConnectedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$4;->setActiviteStatus(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$4;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$4;I)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$4$1;->this$1:Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$4;

    iput p2, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$4$1;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$4$1;->this$1:Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$4;

    iget-object v0, v0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$4;->this$0:Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;

    invoke-static {v0}, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;->access$000(Lcom/powervision/home/ui/activity/PVW4ConnectedActivity;)Lcom/powervision/home/view/NeedCheckActiviteTextView;

    move-result-object v0

    iget v1, p0, Lcom/powervision/home/ui/activity/PVW4ConnectedActivity$4$1;->val$status:I

    invoke-virtual {v0, v1}, Lcom/powervision/home/view/NeedCheckActiviteTextView;->changeActiviteState(I)V

    return-void
.end method
