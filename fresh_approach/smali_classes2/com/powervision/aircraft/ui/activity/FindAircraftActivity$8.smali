.class Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$8;
.super Ljava/lang/Object;
.source "FindAircraftActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->getRemoteElectric(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;

.field final synthetic val$electric:I


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;I)V
    .locals 0

    .line 564
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$8;->this$0:Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;

    iput p2, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$8;->val$electric:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 567
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$8;->this$0:Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;

    iget v1, p0, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity$8;->val$electric:I

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/activity/FindAircraftActivity;->setRemoteElectric(I)V

    return-void
.end method
