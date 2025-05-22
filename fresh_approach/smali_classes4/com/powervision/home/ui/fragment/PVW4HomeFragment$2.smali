.class Lcom/powervision/home/ui/fragment/PVW4HomeFragment$2;
.super Ljava/lang/Object;
.source "PVW4HomeFragment.java"

# interfaces
.implements Lcom/powervision/gcs/utils/NewActiviteUtil$ActiviteStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/ui/fragment/PVW4HomeFragment;


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/fragment/PVW4HomeFragment;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment$2;->this$0:Lcom/powervision/home/ui/fragment/PVW4HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActiviteCodeSuccess()V
    .locals 0

    return-void
.end method

.method public setActiviteStatus(I)V
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeActiviteState 2222 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PVW4HomeFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/PVW4HomeFragment$2;->this$0:Lcom/powervision/home/ui/fragment/PVW4HomeFragment;

    invoke-static {v0}, Lcom/powervision/home/ui/fragment/PVW4HomeFragment;->access$200(Lcom/powervision/home/ui/fragment/PVW4HomeFragment;)Lcom/powervision/home/view/NeedCheckActiviteTextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/home/view/NeedCheckActiviteTextView;->changeActiviteState(I)V

    return-void
.end method
