.class public Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs$Builder;
.super Ljava/lang/Object;
.source "MessageDetailFragmentArgs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final arguments:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs$Builder;->arguments:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs$Builder;->arguments:Ljava/util/HashMap;

    .line 96
    invoke-static {p1}, Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs;->access$000(Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs;
    .locals 3

    .line 104
    new-instance v0, Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs;

    iget-object v1, p0, Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs$Builder;->arguments:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs;-><init>(Ljava/util/HashMap;Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs$1;)V

    return-object v0
.end method

.method public getMsgType()Ljava/lang/String;
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs$Builder;->arguments:Ljava/util/HashMap;

    const-string v1, "msgType"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setMsgType(Ljava/lang/String;)Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs$Builder;
    .locals 2

    if-eqz p1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs$Builder;->arguments:Ljava/util/HashMap;

    const-string v1, "msgType"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 111
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument \"msgType\" is marked as non-null but was passed a null value."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
