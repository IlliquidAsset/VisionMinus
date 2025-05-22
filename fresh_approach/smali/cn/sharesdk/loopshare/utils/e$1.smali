.class Lcn/sharesdk/loopshare/utils/e$1;
.super Ljava/lang/Object;
.source "MobLinkImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/loopshare/utils/e;->a(Landroid/app/Activity;Lcn/sharesdk/loopshare/SceneRestorable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcn/sharesdk/loopshare/SceneRestorable;

.field final synthetic c:Lcn/sharesdk/loopshare/utils/e;


# direct methods
.method constructor <init>(Lcn/sharesdk/loopshare/utils/e;Landroid/app/Activity;Lcn/sharesdk/loopshare/SceneRestorable;)V
    .locals 0

    .line 699
    iput-object p1, p0, Lcn/sharesdk/loopshare/utils/e$1;->c:Lcn/sharesdk/loopshare/utils/e;

    iput-object p2, p0, Lcn/sharesdk/loopshare/utils/e$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcn/sharesdk/loopshare/utils/e$1;->b:Lcn/sharesdk/loopshare/SceneRestorable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 702
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/e$1;->c:Lcn/sharesdk/loopshare/utils/e;

    iget-object v1, p0, Lcn/sharesdk/loopshare/utils/e$1;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcn/sharesdk/loopshare/utils/e$1;->b:Lcn/sharesdk/loopshare/SceneRestorable;

    invoke-static {v0, v1, v2}, Lcn/sharesdk/loopshare/utils/e;->a(Lcn/sharesdk/loopshare/utils/e;Landroid/app/Activity;Lcn/sharesdk/loopshare/SceneRestorable;)V

    return-void
.end method
