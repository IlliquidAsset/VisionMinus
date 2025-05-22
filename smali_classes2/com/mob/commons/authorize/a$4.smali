.class Lcom/mob/commons/authorize/a$4;
.super Ljava/lang/Object;
.source "Authorizer.java"

# interfaces
.implements Lcom/mob/commons/LockAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/authorize/a;->c(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcom/mob/commons/authorize/a;


# direct methods
.method constructor <init>(Lcom/mob/commons/authorize/a;Ljava/util/HashMap;)V
    .locals 0

    .line 887
    iput-object p1, p0, Lcom/mob/commons/authorize/a$4;->b:Lcom/mob/commons/authorize/a;

    iput-object p2, p0, Lcom/mob/commons/authorize/a$4;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/mob/tools/utils/FileLocker;)Z
    .locals 2

    .line 889
    iget-object p1, p0, Lcom/mob/commons/authorize/a$4;->b:Lcom/mob/commons/authorize/a;

    iget-object v0, p0, Lcom/mob/commons/authorize/a$4;->a:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/mob/commons/authorize/a;->a(Lcom/mob/commons/authorize/a;Ljava/util/HashMap;Z)V

    return v1
.end method
