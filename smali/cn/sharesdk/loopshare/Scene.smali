.class public Lcn/sharesdk/loopshare/Scene;
.super Ljava/lang/Object;
.source "Scene.java"

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;
.implements Ljava/io/Serializable;


# instance fields
.field public params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParams()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcn/sharesdk/loopshare/Scene;->params:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcn/sharesdk/loopshare/Scene;->path:Ljava/lang/String;

    return-object v0
.end method

.method public setParams(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcn/sharesdk/loopshare/Scene;->params:Ljava/util/HashMap;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcn/sharesdk/loopshare/Scene;->path:Ljava/lang/String;

    return-void
.end method
