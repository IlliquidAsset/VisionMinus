.class Lcom/mob/commons/c$2;
.super Ljava/lang/Object;
.source "DataHeap.java"

# interfaces
.implements Lcom/mob/commons/LockAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/c;->d()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/c;


# direct methods
.method constructor <init>(Lcom/mob/commons/c;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/mob/commons/c$2;->a:Lcom/mob/commons/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/mob/tools/utils/FileLocker;)Z
    .locals 5

    const/16 p1, 0x32

    new-array v0, p1, [[Ljava/lang/String;

    .line 277
    iget-object v1, p0, Lcom/mob/commons/c$2;->a:Lcom/mob/commons/c;

    invoke-static {v1, v0}, Lcom/mob/commons/c;->a(Lcom/mob/commons/c;[[Ljava/lang/String;)I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    if-lez v1, :cond_3

    .line 279
    iget-object v3, p0, Lcom/mob/commons/c$2;->a:Lcom/mob/commons/c;

    invoke-static {v3, v0, v1}, Lcom/mob/commons/c;->a(Lcom/mob/commons/c;[[Ljava/lang/String;I)Landroid/util/SparseArray;

    move-result-object v3

    if-nez v3, :cond_0

    .line 281
    iget-object p1, p0, Lcom/mob/commons/c$2;->a:Lcom/mob/commons/c;

    invoke-static {p1, v2}, Lcom/mob/commons/c;->a(Lcom/mob/commons/c;Z)Z

    goto :goto_1

    .line 284
    :cond_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 285
    iget-object v4, p0, Lcom/mob/commons/c$2;->a:Lcom/mob/commons/c;

    invoke-static {v4, v3}, Lcom/mob/commons/c;->a(Lcom/mob/commons/c;Landroid/util/SparseArray;)I

    :cond_1
    if-ge v1, p1, :cond_2

    goto :goto_1

    .line 290
    :cond_2
    iget-object v1, p0, Lcom/mob/commons/c$2;->a:Lcom/mob/commons/c;

    invoke-static {v1, v0}, Lcom/mob/commons/c;->a(Lcom/mob/commons/c;[[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_3
    :goto_1
    return v2
.end method
