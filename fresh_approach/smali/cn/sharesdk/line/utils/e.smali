.class public Lcn/sharesdk/line/utils/e;
.super Ljava/lang/Object;
.source "Scope.java"


# static fields
.field public static final a:Lcn/sharesdk/line/utils/e;

.field public static final b:Lcn/sharesdk/line/utils/e;

.field public static final c:Lcn/sharesdk/line/utils/e;

.field public static final d:Lcn/sharesdk/line/utils/e;

.field public static final e:Lcn/sharesdk/line/utils/e;

.field public static final f:Lcn/sharesdk/line/utils/e;

.field public static final g:Lcn/sharesdk/line/utils/e;

.field public static final h:Lcn/sharesdk/line/utils/e;

.field public static final i:Lcn/sharesdk/line/utils/e;

.field public static final j:Lcn/sharesdk/line/utils/e;

.field public static final k:Lcn/sharesdk/line/utils/e;

.field private static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/sharesdk/line/utils/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/sharesdk/line/utils/e;->l:Ljava/util/Map;

    .line 27
    new-instance v0, Lcn/sharesdk/line/utils/e;

    const-string v1, "profile"

    invoke-direct {v0, v1}, Lcn/sharesdk/line/utils/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/sharesdk/line/utils/e;->a:Lcn/sharesdk/line/utils/e;

    .line 33
    new-instance v0, Lcn/sharesdk/line/utils/e;

    const-string v1, "friends"

    invoke-direct {v0, v1}, Lcn/sharesdk/line/utils/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/sharesdk/line/utils/e;->b:Lcn/sharesdk/line/utils/e;

    .line 39
    new-instance v0, Lcn/sharesdk/line/utils/e;

    const-string v1, "groups"

    invoke-direct {v0, v1}, Lcn/sharesdk/line/utils/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/sharesdk/line/utils/e;->c:Lcn/sharesdk/line/utils/e;

    .line 45
    new-instance v0, Lcn/sharesdk/line/utils/e;

    const-string v1, "message.write"

    invoke-direct {v0, v1}, Lcn/sharesdk/line/utils/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/sharesdk/line/utils/e;->d:Lcn/sharesdk/line/utils/e;

    .line 50
    new-instance v0, Lcn/sharesdk/line/utils/e;

    const-string v1, "openid"

    invoke-direct {v0, v1}, Lcn/sharesdk/line/utils/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/sharesdk/line/utils/e;->e:Lcn/sharesdk/line/utils/e;

    .line 55
    new-instance v0, Lcn/sharesdk/line/utils/e;

    const-string v1, "email"

    invoke-direct {v0, v1}, Lcn/sharesdk/line/utils/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/sharesdk/line/utils/e;->f:Lcn/sharesdk/line/utils/e;

    .line 61
    new-instance v0, Lcn/sharesdk/line/utils/e;

    const-string v1, "phone"

    invoke-direct {v0, v1}, Lcn/sharesdk/line/utils/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/sharesdk/line/utils/e;->g:Lcn/sharesdk/line/utils/e;

    .line 67
    new-instance v0, Lcn/sharesdk/line/utils/e;

    const-string v1, "gender"

    invoke-direct {v0, v1}, Lcn/sharesdk/line/utils/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/sharesdk/line/utils/e;->h:Lcn/sharesdk/line/utils/e;

    .line 73
    new-instance v0, Lcn/sharesdk/line/utils/e;

    const-string v1, "birthdate"

    invoke-direct {v0, v1}, Lcn/sharesdk/line/utils/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/sharesdk/line/utils/e;->i:Lcn/sharesdk/line/utils/e;

    .line 79
    new-instance v0, Lcn/sharesdk/line/utils/e;

    const-string v1, "address"

    invoke-direct {v0, v1}, Lcn/sharesdk/line/utils/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/sharesdk/line/utils/e;->j:Lcn/sharesdk/line/utils/e;

    .line 85
    new-instance v0, Lcn/sharesdk/line/utils/e;

    const-string v1, "real_name"

    invoke-direct {v0, v1}, Lcn/sharesdk/line/utils/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/sharesdk/line/utils/e;->k:Lcn/sharesdk/line/utils/e;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    sget-object v0, Lcn/sharesdk/line/utils/e;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iput-object p1, p0, Lcn/sharesdk/line/utils/e;->m:Ljava/lang/String;

    .line 100
    sget-object v0, Lcn/sharesdk/line/utils/e;->l:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scope code already exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;)Lcn/sharesdk/line/utils/e;
    .locals 1

    .line 107
    sget-object v0, Lcn/sharesdk/line/utils/e;->l:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/sharesdk/line/utils/e;

    return-object p0
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/sharesdk/line/utils/e;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 114
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    invoke-static {p0}, Lcn/sharesdk/line/utils/e;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const-string v0, " "

    .line 119
    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcn/sharesdk/line/utils/e;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 143
    invoke-static {v1}, Lcn/sharesdk/line/utils/e;->a(Ljava/lang/String;)Lcn/sharesdk/line/utils/e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 145
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static c(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/sharesdk/line/utils/e;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/sharesdk/line/utils/e;

    .line 158
    iget-object v1, v1, Lcn/sharesdk/line/utils/e;->m:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 183
    :cond_1
    check-cast p1, Lcn/sharesdk/line/utils/e;

    .line 185
    iget-object v0, p0, Lcn/sharesdk/line/utils/e;->m:Ljava/lang/String;

    iget-object p1, p1, Lcn/sharesdk/line/utils/e;->m:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 193
    iget-object v0, p0, Lcn/sharesdk/line/utils/e;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scope{code=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/sharesdk/line/utils/e;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
