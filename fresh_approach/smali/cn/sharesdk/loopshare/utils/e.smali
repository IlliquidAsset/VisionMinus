.class public Lcn/sharesdk/loopshare/utils/e;
.super Ljava/lang/Object;
.source "MobLinkImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/loopshare/utils/e$a;,
        Lcn/sharesdk/loopshare/utils/e$c;,
        Lcn/sharesdk/loopshare/utils/e$b;
    }
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcn/sharesdk/loopshare/RestoreSceneListener;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcn/sharesdk/loopshare/SceneRestorable;

.field private volatile c:Z

.field private volatile d:Z

.field private e:Lcn/sharesdk/loopshare/utils/a;

.field private f:Lcn/sharesdk/loopshare/utils/e$a;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Lcn/sharesdk/loopshare/utils/e$b;

.field private i:Lcn/sharesdk/loopshare/utils/e$c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {}, Lcn/sharesdk/loopshare/utils/a;->a()Lcn/sharesdk/loopshare/utils/a;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/loopshare/utils/e;->e:Lcn/sharesdk/loopshare/utils/a;

    .line 65
    new-instance v0, Lcn/sharesdk/loopshare/utils/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/sharesdk/loopshare/utils/e$a;-><init>(Lcn/sharesdk/loopshare/utils/e;Lcn/sharesdk/loopshare/utils/e$1;)V

    iput-object v0, p0, Lcn/sharesdk/loopshare/utils/e;->f:Lcn/sharesdk/loopshare/utils/e$a;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/loopshare/utils/e;->g:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Lcn/sharesdk/loopshare/utils/e$b;

    invoke-direct {v0, p0, v1}, Lcn/sharesdk/loopshare/utils/e$b;-><init>(Lcn/sharesdk/loopshare/utils/e;Lcn/sharesdk/loopshare/utils/e$1;)V

    iput-object v0, p0, Lcn/sharesdk/loopshare/utils/e;->h:Lcn/sharesdk/loopshare/utils/e$b;

    .line 70
    new-instance v0, Lcn/sharesdk/loopshare/utils/e$c;

    invoke-direct {v0, p0, v1}, Lcn/sharesdk/loopshare/utils/e$c;-><init>(Lcn/sharesdk/loopshare/utils/e;Lcn/sharesdk/loopshare/utils/e$1;)V

    iput-object v0, p0, Lcn/sharesdk/loopshare/utils/e;->i:Lcn/sharesdk/loopshare/utils/e$c;

    .line 124
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->a()Lcn/sharesdk/loopshare/utils/f;

    .line 125
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/e;->e:Lcn/sharesdk/loopshare/utils/a;

    iget-object v1, p0, Lcn/sharesdk/loopshare/utils/e;->f:Lcn/sharesdk/loopshare/utils/e$a;

    invoke-virtual {v0, v1}, Lcn/sharesdk/loopshare/utils/a;->a(Lcn/sharesdk/loopshare/utils/a$a;)V

    return-void
.end method

.method private a(Lcn/sharesdk/loopshare/beans/SceneData$Res;)Landroid/net/Uri;
    .locals 3

    .line 671
    invoke-static {p1}, Lcn/sharesdk/loopshare/utils/g;->a(Lcn/sharesdk/loopshare/beans/SceneData$Res;)Ljava/lang/String;

    move-result-object p1

    .line 672
    invoke-static {}, Lcn/sharesdk/loopshare/utils/AsyncProtocol;->a()Lcn/sharesdk/loopshare/beans/ConfigData;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {v0}, Lcn/sharesdk/loopshare/beans/ConfigData;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 674
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?params="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method private a(Ljava/lang/String;)Lcn/sharesdk/loopshare/RestoreSceneListener;
    .locals 7

    .line 499
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/e;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 500
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/e;->a:Ljava/util/HashMap;

    const-string v1, "key_moblink_default_restore_scene_listener"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/loopshare/RestoreSceneListener;

    .line 501
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "[MOBLINK]%s"

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/sharesdk/loopshare/utils/e;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/loopshare/RestoreSceneListener;

    .line 503
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Use customized RestoreSceneListener. scheme: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {v1, v4, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    .line 505
    :cond_0
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Use default RestoreSceneListener. scheme: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {v1, v4, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private a(Lcn/sharesdk/loopshare/beans/SceneData$Res;I)Ljava/lang/Class;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 453
    invoke-virtual {p1}, Lcn/sharesdk/loopshare/beans/SceneData$Res;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x4

    const-string v1, ""

    .line 455
    invoke-static {v1, p2, p1}, Lcn/sharesdk/loopshare/utils/AsyncProtocol;->a(Ljava/lang/String;II)V

    return-object v0

    .line 458
    :cond_1
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object p2

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Find controller from SceneData.Res.action. action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "[MOBLINK]%s"

    invoke-virtual {p2, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 460
    :try_start_0
    invoke-static {p1}, Lcom/mob/tools/utils/ReflectHelper;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 462
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CAUTION: Specified class can NOT be found, restoring may terminated!"

    aput-object v2, v1, v4

    invoke-virtual {p2, p1, v3, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    return-object v0
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 726
    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 728
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    .line 729
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 730
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 731
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    .line 732
    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 733
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    if-eqz p1, :cond_0

    .line 735
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :cond_0
    return-object v3
.end method

.method private a(Landroid/app/Activity;)V
    .locals 3

    .line 741
    invoke-direct {p0, p1}, Lcn/sharesdk/loopshare/utils/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 742
    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 743
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 744
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "moblink_internal_intent"

    const/4 v1, 0x0

    .line 745
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 746
    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/Class;Landroid/content/Intent;)V
    .locals 1

    .line 655
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 656
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 657
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p2, 0x20000000

    .line 659
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, "moblink_internal_intent"

    const/4 p3, 0x1

    .line 661
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 662
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Landroid/content/Intent;Landroid/app/Activity;Lcn/sharesdk/loopshare/beans/SceneData$Res;I)V
    .locals 1

    .line 519
    invoke-direct {p0, p3}, Lcn/sharesdk/loopshare/utils/e;->a(Lcn/sharesdk/loopshare/beans/SceneData$Res;)Landroid/net/Uri;

    move-result-object p1

    .line 520
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 521
    invoke-virtual {p3, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "moblink_intent_from_server"

    const/4 v0, 0x1

    .line 522
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "moblink_log_scene_source"

    .line 523
    invoke-virtual {p3, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 524
    invoke-direct {p0, p3, p2}, Lcn/sharesdk/loopshare/utils/e;->e(Landroid/content/Intent;Landroid/app/Activity;)V

    return-void
.end method

.method private a(Landroid/content/Intent;Landroid/app/Activity;Z)V
    .locals 9

    .line 169
    invoke-direct {p0}, Lcn/sharesdk/loopshare/utils/e;->a()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "[MOBLINK]%s"

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 174
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "NO valid config, obtain config from server first"

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 175
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/e;->h:Lcn/sharesdk/loopshare/utils/e$b;

    invoke-virtual {v0}, Lcn/sharesdk/loopshare/utils/e$b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "config is requsting"

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 177
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/e;->h:Lcn/sharesdk/loopshare/utils/e$b;

    invoke-virtual {v0}, Lcn/sharesdk/loopshare/utils/e$b;->a()Z

    .line 178
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/e;->h:Lcn/sharesdk/loopshare/utils/e$b;

    new-instance v1, Lcn/sharesdk/loopshare/utils/c;

    invoke-direct {v1, p2, p1, p3}, Lcn/sharesdk/loopshare/utils/c;-><init>(Landroid/app/Activity;Landroid/content/Intent;Z)V

    invoke-static {v0, v1}, Lcn/sharesdk/loopshare/utils/e$b;->a(Lcn/sharesdk/loopshare/utils/e$b;Lcn/sharesdk/loopshare/utils/c;)Lcn/sharesdk/loopshare/utils/c;

    .line 179
    iget-object p1, p0, Lcn/sharesdk/loopshare/utils/e;->h:Lcn/sharesdk/loopshare/utils/e$b;

    invoke-static {p1}, Lcn/sharesdk/loopshare/utils/b;->a(Lcn/sharesdk/loopshare/utils/AsyncProtocol$DataListener;)V

    goto/16 :goto_2

    .line 181
    :cond_0
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "config is requsting,so skip it"

    aput-object p3, p2, v1

    invoke-virtual {p1, v2, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto/16 :goto_2

    :cond_1
    if-nez p3, :cond_3

    .line 183
    invoke-direct {p0, p1}, Lcn/sharesdk/loopshare/utils/e;->b(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 185
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Restore Model: App Link"

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 186
    invoke-static {p1}, Lcn/sharesdk/loopshare/utils/d;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "linkId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v4, v2, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 188
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 189
    invoke-direct {p0}, Lcn/sharesdk/loopshare/utils/e;->b()V

    goto/16 :goto_2

    .line 190
    :cond_2
    iget-object v4, p0, Lcn/sharesdk/loopshare/utils/e;->i:Lcn/sharesdk/loopshare/utils/e$c;

    invoke-virtual {v4}, Lcn/sharesdk/loopshare/utils/e$c;->b()Z

    move-result v4

    if-nez v4, :cond_9

    .line 191
    iget-object v4, p0, Lcn/sharesdk/loopshare/utils/e;->i:Lcn/sharesdk/loopshare/utils/e$c;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcn/sharesdk/loopshare/utils/e$c;->a(I)V

    .line 192
    iget-object v4, p0, Lcn/sharesdk/loopshare/utils/e;->i:Lcn/sharesdk/loopshare/utils/e$c;

    invoke-virtual {v4}, Lcn/sharesdk/loopshare/utils/e$c;->a()Z

    .line 193
    iget-object v4, p0, Lcn/sharesdk/loopshare/utils/e;->i:Lcn/sharesdk/loopshare/utils/e$c;

    new-instance v5, Lcn/sharesdk/loopshare/utils/c;

    invoke-direct {v5, p2, p1, p3}, Lcn/sharesdk/loopshare/utils/c;-><init>(Landroid/app/Activity;Landroid/content/Intent;Z)V

    invoke-static {v4, v5}, Lcn/sharesdk/loopshare/utils/e$c;->a(Lcn/sharesdk/loopshare/utils/e$c;Lcn/sharesdk/loopshare/utils/c;)Lcn/sharesdk/loopshare/utils/c;

    .line 194
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "Obtain scene from server through \'ul\'"

    aput-object p3, p2, v1

    invoke-virtual {p1, v2, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 195
    iget-object p1, p0, Lcn/sharesdk/loopshare/utils/e;->i:Lcn/sharesdk/loopshare/utils/e$c;

    invoke-static {v0, p1}, Lcn/sharesdk/loopshare/utils/b;->a(Ljava/lang/String;Lcn/sharesdk/loopshare/utils/AsyncProtocol$DataListener;)V

    goto/16 :goto_2

    :cond_3
    if-nez p3, :cond_4

    .line 197
    invoke-direct {p0, p1}, Lcn/sharesdk/loopshare/utils/e;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 198
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object p3

    new-array v0, v3, [Ljava/lang/Object;

    const-string v4, "Restore Model: Scheme"

    aput-object v4, v0, v1

    invoke-virtual {p3, v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    const-string p3, "moblink_log_scene_source"

    .line 199
    invoke-virtual {p1, p3, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/loopshare/utils/e;->d(Landroid/content/Intent;Landroid/app/Activity;)V

    goto/16 :goto_2

    :cond_4
    if-eqz p3, :cond_8

    .line 201
    invoke-direct {p0, p1}, Lcn/sharesdk/loopshare/utils/e;->c(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 205
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Restore Model: YYB or First run"

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 206
    invoke-static {}, Lcn/sharesdk/loopshare/utils/a;->a()Lcn/sharesdk/loopshare/utils/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/loopshare/utils/a;->b()Z

    move-result v0

    .line 207
    invoke-static {}, Lcn/sharesdk/loopshare/utils/AsyncProtocol;->a()Lcn/sharesdk/loopshare/beans/ConfigData;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 208
    invoke-virtual {v4}, Lcn/sharesdk/loopshare/beans/ConfigData;->a()Z

    move-result v4

    goto :goto_0

    :cond_5
    const/4 v4, 0x1

    .line 209
    :goto_0
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isAppFirstRun: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isOpenYyb: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v5, v2, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-nez v0, :cond_7

    if-eqz v4, :cond_6

    goto :goto_1

    .line 217
    :cond_6
    invoke-direct {p0}, Lcn/sharesdk/loopshare/utils/e;->b()V

    goto :goto_2

    .line 211
    :cond_7
    :goto_1
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/e;->i:Lcn/sharesdk/loopshare/utils/e$c;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcn/sharesdk/loopshare/utils/e$c;->a(I)V

    .line 212
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/e;->i:Lcn/sharesdk/loopshare/utils/e$c;

    new-instance v4, Lcn/sharesdk/loopshare/utils/c;

    invoke-direct {v4, p2, p1, p3}, Lcn/sharesdk/loopshare/utils/c;-><init>(Landroid/app/Activity;Landroid/content/Intent;Z)V

    invoke-static {v0, v4}, Lcn/sharesdk/loopshare/utils/e$c;->a(Lcn/sharesdk/loopshare/utils/e$c;Lcn/sharesdk/loopshare/utils/c;)Lcn/sharesdk/loopshare/utils/c;

    .line 213
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "Obtain scene from server through \'reco\'"

    aput-object p3, p2, v1

    invoke-virtual {p1, v2, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 214
    iget-object p1, p0, Lcn/sharesdk/loopshare/utils/e;->e:Lcn/sharesdk/loopshare/utils/a;

    invoke-virtual {p1}, Lcn/sharesdk/loopshare/utils/a;->c()I

    move-result p1

    iget-object p2, p0, Lcn/sharesdk/loopshare/utils/e;->i:Lcn/sharesdk/loopshare/utils/e$c;

    invoke-static {p1, p2}, Lcn/sharesdk/loopshare/utils/b;->a(ILcn/sharesdk/loopshare/utils/AsyncProtocol$DataListener;)V

    goto :goto_2

    .line 220
    :cond_8
    invoke-direct {p0}, Lcn/sharesdk/loopshare/utils/e;->b()V

    :cond_9
    :goto_2
    return-void
.end method

.method static synthetic a(Lcn/sharesdk/loopshare/utils/e;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcn/sharesdk/loopshare/utils/e;->b()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/loopshare/utils/e;Landroid/app/Activity;Lcn/sharesdk/loopshare/SceneRestorable;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/loopshare/utils/e;->b(Landroid/app/Activity;Lcn/sharesdk/loopshare/SceneRestorable;)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/loopshare/utils/e;Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/loopshare/utils/e;->b(Landroid/content/Intent;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/loopshare/utils/e;Landroid/content/Intent;Landroid/app/Activity;Lcn/sharesdk/loopshare/beans/SceneData$Res;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/sharesdk/loopshare/utils/e;->a(Landroid/content/Intent;Landroid/app/Activity;Lcn/sharesdk/loopshare/beans/SceneData$Res;I)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/loopshare/utils/e;Landroid/content/Intent;Landroid/app/Activity;Z)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcn/sharesdk/loopshare/utils/e;->a(Landroid/content/Intent;Landroid/app/Activity;Z)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/loopshare/utils/e;Ljava/lang/String;Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcn/sharesdk/loopshare/utils/e;->a(Ljava/lang/String;Landroid/content/Intent;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/loopshare/utils/e;Z)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcn/sharesdk/loopshare/utils/e;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 7

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    .line 294
    invoke-virtual {p3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 296
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    if-eqz p2, :cond_2

    .line 297
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_3

    const-string v0, "moblink_internal_intent"

    .line 300
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 302
    :cond_3
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "(), activity:"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\nextras: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\nmoblink_internal_intent: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\nuri: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\nintent:"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v5

    const-string p1, "[MOBLINK]%s"

    invoke-virtual {v3, p1, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void
.end method

.method private a(Z)V
    .locals 4

    .line 321
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEnableServerRestore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "[MOBLINK]%s"

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 322
    iput-boolean p1, p0, Lcn/sharesdk/loopshare/utils/e;->c:Z

    return-void
.end method

.method private a()Z
    .locals 1

    .line 285
    invoke-static {}, Lcn/sharesdk/loopshare/utils/AsyncProtocol;->a()Lcn/sharesdk/loopshare/beans/ConfigData;

    move-result-object v0

    .line 286
    invoke-static {v0}, Lcn/sharesdk/loopshare/beans/ServerData;->a(Lcn/sharesdk/loopshare/beans/ServerData;)Z

    move-result v0

    return v0
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 3

    if-eqz p1, :cond_1

    .line 250
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 252
    invoke-static {p1}, Lcn/sharesdk/loopshare/utils/d;->e(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 254
    invoke-static {}, Lcn/sharesdk/loopshare/utils/AsyncProtocol;->a()Lcn/sharesdk/loopshare/beans/ConfigData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Lcn/sharesdk/loopshare/beans/ConfigData;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 256
    :goto_0
    invoke-static {p1, v0}, Lcn/sharesdk/loopshare/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x3

    const-string v2, ""

    .line 261
    invoke-static {v2, v0, v1}, Lcn/sharesdk/loopshare/utils/AsyncProtocol;->a(Ljava/lang/String;II)V

    :cond_2
    return p1
.end method

.method static synthetic a(Lcn/sharesdk/loopshare/utils/e;Landroid/content/Intent;)Z
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcn/sharesdk/loopshare/utils/e;->c(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    .line 449
    iput-boolean v0, p0, Lcn/sharesdk/loopshare/utils/e;->d:Z

    return-void
.end method

.method private b(Landroid/app/Activity;Lcn/sharesdk/loopshare/SceneRestorable;)V
    .locals 2

    .line 709
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/e;->b:Lcn/sharesdk/loopshare/SceneRestorable;

    .line 710
    iput-object p2, p0, Lcn/sharesdk/loopshare/utils/e;->b:Lcn/sharesdk/loopshare/SceneRestorable;

    if-eqz p1, :cond_0

    .line 711
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 712
    :goto_0
    iget-boolean v1, p0, Lcn/sharesdk/loopshare/utils/e;->d:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    invoke-static {p2}, Lcn/sharesdk/loopshare/utils/d;->b(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    invoke-direct {p0, p2, p1}, Lcn/sharesdk/loopshare/utils/e;->g(Landroid/content/Intent;Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method private b(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 4

    const/4 v0, 0x1

    .line 228
    iput-boolean v0, p0, Lcn/sharesdk/loopshare/utils/e;->d:Z

    const/4 v1, 0x0

    .line 229
    invoke-direct {p0, p1, p2, v1}, Lcn/sharesdk/loopshare/utils/e;->a(Landroid/content/Intent;Landroid/app/Activity;Z)V

    .line 230
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object p2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "Restore through scheme, mark intent to skip server-restoring."

    aput-object v3, v2, v1

    const-string v1, "[MOBLINK]%s"

    invoke-virtual {p2, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    const-string p2, "moblink_skip_server_restore"

    .line 231
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/loopshare/utils/e;Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/loopshare/utils/e;->c(Landroid/content/Intent;Landroid/app/Activity;)V

    return-void
.end method

.method private b(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 270
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 274
    :cond_1
    invoke-static {p1}, Lcn/sharesdk/loopshare/utils/d;->d(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 278
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 279
    invoke-static {}, Lcn/sharesdk/loopshare/utils/AsyncProtocol;->a()Lcn/sharesdk/loopshare/beans/ConfigData;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 280
    invoke-virtual {v1}, Lcn/sharesdk/loopshare/beans/ConfigData;->e()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    .line 281
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ssdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 5

    .line 238
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "CAUTION: Restore through server!"

    aput-object v4, v2, v3

    const-string v3, "[MOBLINK]%s"

    invoke-virtual {v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 239
    iput-boolean v1, p0, Lcn/sharesdk/loopshare/utils/e;->d:Z

    .line 240
    invoke-direct {p0, p1, p2, v1}, Lcn/sharesdk/loopshare/utils/e;->a(Landroid/content/Intent;Landroid/app/Activity;Z)V

    return-void
.end method

.method private c(Landroid/content/Intent;)Z
    .locals 5

    .line 333
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableServerRestore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcn/sharesdk/loopshare/utils/e;->c:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "[MOBLINK]%s"

    invoke-virtual {v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 334
    iget-boolean v0, p0, Lcn/sharesdk/loopshare/utils/e;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcn/sharesdk/loopshare/utils/e;->d(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private d(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 1

    .line 533
    instance-of v0, p2, Lcn/sharesdk/loopshare/LoopShareActivity;

    if-eqz v0, :cond_0

    .line 534
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/loopshare/utils/e;->e(Landroid/content/Intent;Landroid/app/Activity;)V

    goto :goto_0

    .line 536
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/loopshare/utils/e;->f(Landroid/content/Intent;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method private d(Landroid/content/Intent;)Z
    .locals 5

    .line 338
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/e;->g:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 339
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 340
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 342
    :cond_1
    iget-object p1, p0, Lcn/sharesdk/loopshare/utils/e;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 343
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_3
    if-nez v3, :cond_4

    const/4 v2, 0x1

    .line 348
    :cond_4
    monitor-exit v0

    return v2

    .line 349
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private e(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 12

    .line 544
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Preparing to jump to target activity"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "[MOBLINK]%s"

    invoke-virtual {v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    const-string v0, "moblink_log_scene_source"

    .line 545
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 547
    invoke-static {p1}, Lcn/sharesdk/loopshare/utils/g;->a(Landroid/content/Intent;)Lcn/sharesdk/loopshare/beans/SceneData$Res;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 549
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "scene:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcn/sharesdk/loopshare/beans/SceneData$Res;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " params:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcn/sharesdk/loopshare/beans/SceneData$Res;->getParams()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v5, v3, v6}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    .line 551
    :cond_0
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "scene is null"

    aput-object v7, v6, v4

    invoke-virtual {v5, v3, v6}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 554
    :goto_0
    invoke-static {p1}, Lcn/sharesdk/loopshare/utils/d;->c(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 555
    invoke-virtual {p0, v5, v2}, Lcn/sharesdk/loopshare/utils/e;->a(Ljava/lang/String;Lcn/sharesdk/loopshare/Scene;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, ""

    if-eqz v6, :cond_1

    .line 557
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v8

    new-array v9, v1, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Restoring completed. Clazz from app: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-virtual {v8, v3, v9}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 558
    invoke-direct {p0, p2, v6, p1}, Lcn/sharesdk/loopshare/utils/e;->a(Landroid/app/Activity;Ljava/lang/Class;Landroid/content/Intent;)V

    .line 559
    invoke-virtual {p0, v5, v2}, Lcn/sharesdk/loopshare/utils/e;->c(Ljava/lang/String;Lcn/sharesdk/loopshare/Scene;)V

    .line 560
    invoke-static {v7, v0, v1}, Lcn/sharesdk/loopshare/utils/AsyncProtocol;->a(Ljava/lang/String;II)V

    goto :goto_1

    .line 561
    :cond_1
    invoke-direct {p0, v2, v0}, Lcn/sharesdk/loopshare/utils/e;->a(Lcn/sharesdk/loopshare/beans/SceneData$Res;I)Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 562
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v8

    new-array v9, v1, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Restoring completed. No Clazz from app, so obtain from MOB console: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    .line 562
    invoke-virtual {v8, v3, v9}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 564
    invoke-direct {p0, p2, v6, p1}, Lcn/sharesdk/loopshare/utils/e;->a(Landroid/app/Activity;Ljava/lang/Class;Landroid/content/Intent;)V

    .line 565
    invoke-virtual {p0, v5, v2}, Lcn/sharesdk/loopshare/utils/e;->c(Ljava/lang/String;Lcn/sharesdk/loopshare/Scene;)V

    .line 566
    invoke-static {v7, v0, v1}, Lcn/sharesdk/loopshare/utils/AsyncProtocol;->a(Ljava/lang/String;II)V

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_4

    .line 569
    invoke-direct {p0, p2}, Lcn/sharesdk/loopshare/utils/e;->a(Landroid/app/Activity;)V

    .line 570
    invoke-virtual {p0, v5, v2}, Lcn/sharesdk/loopshare/utils/e;->b(Ljava/lang/String;Lcn/sharesdk/loopshare/Scene;)V

    if-nez v6, :cond_3

    const/4 p1, 0x5

    .line 572
    invoke-static {v7, v0, p1}, Lcn/sharesdk/loopshare/utils/AsyncProtocol;->a(Ljava/lang/String;II)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x6

    .line 574
    invoke-static {v7, v0, p1}, Lcn/sharesdk/loopshare/utils/AsyncProtocol;->a(Ljava/lang/String;II)V

    goto :goto_1

    .line 578
    :cond_4
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string v1, "Restoring failed. Clazz can NOT be obtained through either app nor console"

    aput-object v1, p2, v4

    invoke-virtual {p1, v3, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 580
    invoke-virtual {p0, v5, v2}, Lcn/sharesdk/loopshare/utils/e;->b(Ljava/lang/String;Lcn/sharesdk/loopshare/Scene;)V

    const/4 p1, 0x2

    .line 581
    invoke-static {v7, v0, p1}, Lcn/sharesdk/loopshare/utils/AsyncProtocol;->a(Ljava/lang/String;II)V

    :goto_1
    return-void
.end method

.method private f(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 7

    .line 589
    invoke-static {p1}, Lcn/sharesdk/loopshare/utils/g;->a(Landroid/content/Intent;)Lcn/sharesdk/loopshare/beans/SceneData$Res;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "[MOBLINK]%s"

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 591
    instance-of v4, p2, Lcn/sharesdk/loopshare/SceneRestorable;

    if-eqz v4, :cond_0

    .line 592
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "Current activity is SceneRestorable, return scene data to it"

    aput-object v6, v5, v3

    invoke-virtual {v4, v2, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 593
    check-cast p2, Lcn/sharesdk/loopshare/SceneRestorable;

    .line 594
    invoke-interface {p2, v0}, Lcn/sharesdk/loopshare/SceneRestorable;->onReturnSceneData(Lcn/sharesdk/loopshare/Scene;)V

    goto :goto_0

    .line 596
    :cond_0
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object p2

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "Current activity is NOT SceneRestorable, use activity delegate instead"

    aput-object v5, v4, v3

    invoke-virtual {p2, v2, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 597
    iget-object p2, p0, Lcn/sharesdk/loopshare/utils/e;->b:Lcn/sharesdk/loopshare/SceneRestorable;

    if-eqz p2, :cond_1

    .line 599
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "Return scene data to activity delegate"

    aput-object v6, v5, v3

    invoke-virtual {v4, v2, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 600
    invoke-interface {p2, v0}, Lcn/sharesdk/loopshare/SceneRestorable;->onReturnSceneData(Lcn/sharesdk/loopshare/Scene;)V

    goto :goto_0

    .line 602
    :cond_1
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object p2

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "CAUTION: No delegate found, scene data can not be returned!"

    aput-object v5, v4, v3

    invoke-virtual {p2, v2, v4}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0

    .line 606
    :cond_2
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object p2

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "CAUTION: Target activity started, but no Scene!"

    aput-object v5, v4, v3

    invoke-virtual {p2, v2, v4}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 611
    :goto_0
    invoke-direct {p0, v3}, Lcn/sharesdk/loopshare/utils/e;->a(Z)V

    .line 613
    invoke-direct {p0}, Lcn/sharesdk/loopshare/utils/e;->b()V

    .line 615
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object p2

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "Upload log"

    aput-object v5, v4, v3

    invoke-virtual {p2, v2, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 616
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2}, Lcn/sharesdk/loopshare/utils/d;->c(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    if-eqz v0, :cond_3

    .line 617
    invoke-virtual {v0}, Lcn/sharesdk/loopshare/beans/SceneData$Res;->getLink()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 618
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 620
    invoke-static {p2}, Lcn/sharesdk/loopshare/utils/l;->a(Ljava/lang/String;)Z

    :cond_4
    if-eqz p1, :cond_5

    const-string p2, "moblink_intent_from_server"

    .line 624
    invoke-virtual {p1, p2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_5

    .line 625
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Destroy scene data on server. END flow!"

    aput-object v0, p2, v3

    invoke-virtual {p1, v2, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 626
    invoke-static {}, Lcn/sharesdk/loopshare/utils/AsyncProtocol;->b()V

    :cond_5
    return-void
.end method

.method private g(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 0

    .line 722
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/loopshare/utils/e;->b(Landroid/content/Intent;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lcn/sharesdk/loopshare/Scene;)Ljava/lang/Class;
    .locals 5

    .line 470
    invoke-direct {p0, p1}, Lcn/sharesdk/loopshare/utils/e;->a(Ljava/lang/String;)Lcn/sharesdk/loopshare/RestoreSceneListener;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "[MOBLINK]%s"

    if-eqz p1, :cond_0

    .line 472
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "Global RestoreSceneListener is implemented!"

    aput-object v4, v1, v0

    invoke-virtual {v3, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 473
    invoke-interface {p1, p2}, Lcn/sharesdk/loopshare/RestoreSceneListener;->willRestoreScene(Lcn/sharesdk/loopshare/Scene;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 475
    :cond_0
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string v1, "CAUTION: Global RestoreSceneListener is NOT implemented!"

    aput-object v1, p2, v0

    invoke-virtual {p1, v2, p2}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Object;[Ljava/lang/Object;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/app/Activity;Lcn/sharesdk/loopshare/SceneRestorable;)V
    .locals 4

    .line 693
    sget-boolean v0, Lcn/sharesdk/loopshare/utils/j;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 696
    :cond_0
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "CAUTION: Activity delegate set, this operation is NOT recommended except Cocos2d or Unity3d!"

    aput-object v3, v1, v2

    const-string v2, "[MOBLINK]%s"

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Object;[Ljava/lang/Object;)I

    if-eqz p1, :cond_1

    .line 699
    new-instance v0, Lcn/sharesdk/loopshare/utils/e$1;

    invoke-direct {v0, p0, p1, p2}, Lcn/sharesdk/loopshare/utils/e$1;-><init>(Lcn/sharesdk/loopshare/utils/e;Landroid/app/Activity;Lcn/sharesdk/loopshare/SceneRestorable;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 5

    .line 357
    sget-boolean v0, Lcn/sharesdk/loopshare/utils/j;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "onNewIntent"

    .line 360
    invoke-direct {p0, v0, p1, p2}, Lcn/sharesdk/loopshare/utils/e;->a(Ljava/lang/String;Landroid/content/Intent;Landroid/app/Activity;)V

    const/4 v0, 0x1

    const-string v1, "[MOBLINK]%s"

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const-string v3, "moblink_internal_intent"

    .line 362
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 364
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 365
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "=====> Start main logic during NEWINTENT."

    aput-object v4, v0, v2

    invoke-virtual {v3, v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 366
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/loopshare/utils/e;->b(Landroid/content/Intent;Landroid/app/Activity;)V

    goto :goto_0

    .line 368
    :cond_1
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "No main logic during NEWINTENT."

    aput-object v0, p2, v2

    invoke-virtual {p1, v1, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public a(Lcn/sharesdk/loopshare/RestoreSceneListener;)V
    .locals 2

    .line 130
    sget-boolean v0, Lcn/sharesdk/loopshare/utils/j;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/e;->a:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/loopshare/utils/e;->a:Ljava/util/HashMap;

    .line 136
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/e;->a:Ljava/util/HashMap;

    const-string v1, "key_moblink_default_restore_scene_listener"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcn/sharesdk/loopshare/Scene;Lcn/sharesdk/loopshare/ActionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/loopshare/Scene;",
            "Lcn/sharesdk/loopshare/ActionListener<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 156
    sget-boolean v0, Lcn/sharesdk/loopshare/utils/j;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 159
    :cond_0
    invoke-static {p1, p2}, Lcn/sharesdk/loopshare/utils/b;->a(Lcn/sharesdk/loopshare/Scene;Lcn/sharesdk/loopshare/ActionListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcn/sharesdk/loopshare/RestoreSceneListener;)V
    .locals 1

    .line 141
    sget-boolean v0, Lcn/sharesdk/loopshare/utils/j;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/e;->a:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/loopshare/utils/e;->a:Ljava/util/HashMap;

    :cond_1
    const-string v0, "sdfwe435fdsr34656uthfwer32ufeh439=="

    .line 148
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    invoke-direct {p0}, Lcn/sharesdk/loopshare/utils/e;->c()Ljava/lang/String;

    move-result-object p1

    .line 151
    :cond_2
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public varargs a([Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 309
    sget-boolean v0, Lcn/sharesdk/loopshare/utils/j;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 312
    :cond_0
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const-string v1, "[MOBLINK]%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "CAUTION: \'Skip restore from wx\' feature is activated!"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 314
    iget-object v0, p0, Lcn/sharesdk/loopshare/utils/e;->g:Ljava/util/ArrayList;

    monitor-enter v0

    .line 315
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/loopshare/utils/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 316
    iget-object v1, p0, Lcn/sharesdk/loopshare/utils/e;->g:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 317
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected b(Ljava/lang/String;Lcn/sharesdk/loopshare/Scene;)V
    .locals 0

    .line 480
    invoke-direct {p0, p1}, Lcn/sharesdk/loopshare/utils/e;->a(Ljava/lang/String;)Lcn/sharesdk/loopshare/RestoreSceneListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 482
    invoke-interface {p1, p2}, Lcn/sharesdk/loopshare/RestoreSceneListener;->notFoundScene(Lcn/sharesdk/loopshare/Scene;)V

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;Lcn/sharesdk/loopshare/Scene;)V
    .locals 0

    .line 487
    invoke-direct {p0, p1}, Lcn/sharesdk/loopshare/utils/e;->a(Ljava/lang/String;)Lcn/sharesdk/loopshare/RestoreSceneListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 489
    invoke-interface {p1, p2}, Lcn/sharesdk/loopshare/RestoreSceneListener;->completeRestore(Lcn/sharesdk/loopshare/Scene;)V

    :cond_0
    return-void
.end method
