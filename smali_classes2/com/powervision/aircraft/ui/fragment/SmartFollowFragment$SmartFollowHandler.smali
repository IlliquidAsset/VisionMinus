.class Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$SmartFollowHandler;
.super Lcom/powervision/base/base/BaseHandleReference;
.source "SmartFollowFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmartFollowHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseHandleReference<",
        "Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;)V
    .locals 0

    .line 181
    invoke-direct {p0, p1}, Lcom/powervision/base/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;Landroid/os/Message;)V
    .locals 0

    .line 186
    invoke-static {p1, p2}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;->access$000(Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 178
    check-cast p1, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment$SmartFollowHandler;->referenceHandleMessage(Lcom/powervision/aircraft/ui/fragment/SmartFollowFragment;Landroid/os/Message;)V

    return-void
.end method
