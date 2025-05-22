.class public final synthetic Lcom/powervision/home/ui/activity/-$$Lambda$GuideRemoteControlPaireActivity$qacnjjPIKUTs2lBOKLD5nlwoAKc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/home/ui/activity/-$$Lambda$GuideRemoteControlPaireActivity$qacnjjPIKUTs2lBOKLD5nlwoAKc;->f$0:Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;

    iput-boolean p2, p0, Lcom/powervision/home/ui/activity/-$$Lambda$GuideRemoteControlPaireActivity$qacnjjPIKUTs2lBOKLD5nlwoAKc;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/powervision/home/ui/activity/-$$Lambda$GuideRemoteControlPaireActivity$qacnjjPIKUTs2lBOKLD5nlwoAKc;->f$0:Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;

    iget-boolean v1, p0, Lcom/powervision/home/ui/activity/-$$Lambda$GuideRemoteControlPaireActivity$qacnjjPIKUTs2lBOKLD5nlwoAKc;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/powervision/home/ui/activity/GuideRemoteControlPaireActivity;->lambda$showResultDialog$0$GuideRemoteControlPaireActivity(Z)V

    return-void
.end method
