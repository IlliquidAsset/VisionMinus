.class public final synthetic Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$H7vhBAGTuevFTn0lPPAIPKKM7AA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/powervision/base/utils/DialogUtils$OnClickListener;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$H7vhBAGTuevFTn0lPPAIPKKM7AA;->f$0:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$H7vhBAGTuevFTn0lPPAIPKKM7AA;->f$0:Z

    invoke-static {v0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->lambda$currentStorageFull$35(ZLandroid/view/View;)V

    return-void
.end method
