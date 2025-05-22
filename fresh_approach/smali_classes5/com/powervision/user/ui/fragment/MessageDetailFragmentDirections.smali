.class public Lcom/powervision/user/ui/fragment/MessageDetailFragmentDirections;
.super Ljava/lang/Object;
.source "MessageDetailFragmentDirections.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static userActionMessagedetailToMessage()Landroidx/navigation/NavDirections;
    .locals 2

    .line 14
    new-instance v0, Landroidx/navigation/ActionOnlyNavDirections;

    sget v1, Lcom/powervision/user/R$id;->user_action_messagedetail_to_message:I

    invoke-direct {v0, v1}, Landroidx/navigation/ActionOnlyNavDirections;-><init>(I)V

    return-object v0
.end method
