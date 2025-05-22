.class final Lcom/mob/tools/utils/ReflectHelper$1;
.super Ljava/lang/Object;
.source "ReflectHelper.java"

# interfaces
.implements Lcom/mob/tools/utils/ReflectHelper$ReflectRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/ReflectHelper;->createProxy(Ljava/util/HashMap;[Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mob/tools/utils/ReflectHelper$ReflectRunnable<",
        "[",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$ent:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Ljava/util/Map$Entry;)V
    .locals 0

    .line 878
    iput-object p1, p0, Lcom/mob/tools/utils/ReflectHelper$1;->val$ent:Ljava/util/Map$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 878
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/mob/tools/utils/ReflectHelper$1;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public run([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 880
    iget-object v0, p0, Lcom/mob/tools/utils/ReflectHelper$1;->val$ent:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/utils/ReflectHelper$ReflectRunnable;

    invoke-interface {v0, p1}, Lcom/mob/tools/utils/ReflectHelper$ReflectRunnable;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    return-object p1
.end method
