.class public Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs;
.super Ljava/lang/Object;
.source "MessageDetailFragmentArgs.java"

# interfaces
.implements Landroidx/navigation/NavArgs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs$Builder;
    }
.end annotation


# instance fields
.field private final arguments:Ljava/util/HashMap;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs;->arguments:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Ljava/util/HashMap;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs;->arguments:Ljava/util/HashMap;

    .line 20
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/HashMap;Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs;-><init>(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs;)Ljava/util/HashMap;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs;->arguments:Ljava/util/HashMap;

    return-object p0
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs;
    .locals 3

    .line 26
    new-instance v0, Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs;

    invoke-direct {v0}, Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs;-><init>()V

    .line 27
    const-class v1, Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "msgType"

    .line 28
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 34
    iget-object v2, v0, Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs;->arguments:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 32
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument \"msgType\" is marked as non-null but was passed a null value."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 36
    :cond_1
    iget-object p0, v0, Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs;->arguments:Ljava/util/HashMap;

    const-string v2, "0"

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 68
    :cond_1
    check-cast p1, Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs;

    .line 69
    iget-object v2, p0, Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs;->arguments:Ljava/util/HashMap;

    const-string v3, "msgType"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    iget-object v4, p1, Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs;->arguments:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs;->getMsgType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs;->getMsgType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs;->getMsgType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs;->getMsgType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    :goto_0
    return v1

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public getMsgType()Ljava/lang/String;
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs;->arguments:Ljava/util/HashMap;

    const-string v1, "msgType"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 81
    invoke-virtual {p0}, Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs;->getMsgType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs;->getMsgType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    iget-object v1, p0, Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs;->arguments:Ljava/util/HashMap;

    const-string v2, "msgType"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs;->arguments:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 53
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "0"

    .line 55
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageDetailFragmentArgs{msgType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p0}, Lcom/powervision/user/ui/fragment/MessageDetailFragmentArgs;->getMsgType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
