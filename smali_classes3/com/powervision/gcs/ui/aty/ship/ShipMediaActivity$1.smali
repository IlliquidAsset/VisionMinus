.class Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity$1;
.super Lcom/powervision/localhttp/PVW4RequestSimpleListener;
.source "ShipMediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;

    invoke-direct {p0}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileCount(ILcom/powervision/localhttp/entity/BaseModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/powervision/localhttp/entity/BaseModel<",
            "Lcom/powervision/localhttp/entity/PVW4FileCount;",
            ">;)V"
        }
    .end annotation

    .line 220
    invoke-super {p0, p1, p2}, Lcom/powervision/localhttp/PVW4RequestSimpleListener;->getFileCount(ILcom/powervision/localhttp/entity/BaseModel;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 221
    invoke-virtual {p2}, Lcom/powervision/localhttp/entity/BaseModel;->isPVW4Success()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 222
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->access$000(Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 225
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;

    invoke-static {p1, v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->access$002(Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;Z)Z

    .line 227
    iget-object p1, p2, Lcom/powervision/localhttp/entity/BaseModel;->Parameter:Ljava/lang/Object;

    check-cast p1, Lcom/powervision/localhttp/entity/PVW4FileCount;

    iget p1, p1, Lcom/powervision/localhttp/entity/PVW4FileCount;->count:I

    .line 228
    invoke-static {}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->get()Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/powervision/gcs/view/ship/shipcallback/MediaFileListModel;->setTotalCount(I)V

    goto :goto_0

    .line 230
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->access$100(Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;)I

    move-result p1

    const/16 p2, 0xa

    if-le p1, p2, :cond_2

    .line 232
    sget p1, Lcom/powervision/gcs/R$string;->PVW4_Msg_30:I

    invoke-static {p1}, Lcom/powervision/gcs/utils/ToastUtil;->showDefaultToast(I)V

    goto :goto_0

    .line 234
    :cond_2
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->access$108(Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;)I

    .line 235
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity$1$1;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity$1$1;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity$1;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
