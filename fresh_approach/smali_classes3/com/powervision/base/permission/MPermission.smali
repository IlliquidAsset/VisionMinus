.class public Lcom/powervision/base/permission/MPermission;
.super Ljava/lang/Object;
.source "MPermission.java"


# instance fields
.field private object:Ljava/lang/Object;

.field private permissions:[Ljava/lang/String;

.field private requestCode:I


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/powervision/base/permission/MPermission;->object:Ljava/lang/Object;

    return-void
.end method

.method private static doExecuteFail(Ljava/lang/Object;I)V
    .locals 2

    .line 196
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/powervision/base/permission/annotation/OnMPermissionDenied;

    invoke-static {v0, v1, p1}, Lcom/powervision/base/permission/util/MPermissionUtil;->findMethodWithRequestCode(Ljava/lang/Class;Ljava/lang/Class;I)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/powervision/base/permission/MPermission;->executeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method private static doExecuteFailAsNeverAskAgain(Ljava/lang/Object;I)V
    .locals 2

    .line 201
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/powervision/base/permission/annotation/OnMPermissionNeverAskAgain;

    invoke-static {v0, v1, p1}, Lcom/powervision/base/permission/util/MPermissionUtil;->findMethodWithRequestCode(Ljava/lang/Class;Ljava/lang/Class;I)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/powervision/base/permission/MPermission;->executeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method private static doExecuteSuccess(Ljava/lang/Object;I)V
    .locals 2

    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/powervision/base/permission/annotation/OnMPermissionGranted;

    invoke-static {v0, v1, p1}, Lcom/powervision/base/permission/util/MPermissionUtil;->findMethodWithRequestCode(Ljava/lang/Class;Ljava/lang/Class;I)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/powervision/base/permission/MPermission;->executeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method private static executeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 210
    invoke-static {p0, p1, v0}, Lcom/powervision/base/permission/MPermission;->executeMethodWithParam(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    return-void
.end method

.method private static varargs executeMethodWithParam(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 216
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 217
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 219
    :cond_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 221
    :goto_0
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public static getDeniedPermissions(Landroid/app/Activity;[Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lcom/powervision/base/permission/MPermission;->getDeniedPermissions(Ljava/lang/Object;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getDeniedPermissions(Landroidx/fragment/app/Fragment;[Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 34
    invoke-static {p0, p1}, Lcom/powervision/base/permission/MPermission;->getDeniedPermissions(Ljava/lang/Object;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getDeniedPermissions(Ljava/lang/Object;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 38
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-static {p0}, Lcom/powervision/base/permission/util/MPermissionUtil;->getActivity(Ljava/lang/Object;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/powervision/base/permission/util/MPermissionUtil;->findDeniedPermissions(Landroid/app/Activity;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDeniedPermissionsWithoutNeverAskAgain(Landroid/app/Activity;[Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1}, Lcom/powervision/base/permission/MPermission;->getDeniedPermissionsWithoutNeverAskAgain(Ljava/lang/Object;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getDeniedPermissionsWithoutNeverAskAgain(Landroidx/fragment/app/Fragment;[Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    invoke-static {p0, p1}, Lcom/powervision/base/permission/MPermission;->getDeniedPermissionsWithoutNeverAskAgain(Ljava/lang/Object;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getDeniedPermissionsWithoutNeverAskAgain(Ljava/lang/Object;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 70
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {p0}, Lcom/powervision/base/permission/util/MPermissionUtil;->getActivity(Ljava/lang/Object;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/powervision/base/permission/util/MPermissionUtil;->findDeniedPermissionWithoutNeverAskAgain(Landroid/app/Activity;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNeverAskAgainPermissions(Landroid/app/Activity;[Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lcom/powervision/base/permission/MPermission;->getNeverAskAgainPermissions(Ljava/lang/Object;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getNeverAskAgainPermissions(Landroidx/fragment/app/Fragment;[Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    invoke-static {p0, p1}, Lcom/powervision/base/permission/MPermission;->getNeverAskAgainPermissions(Ljava/lang/Object;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getNeverAskAgainPermissions(Ljava/lang/Object;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 54
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {p0}, Lcom/powervision/base/permission/util/MPermissionUtil;->getActivity(Ljava/lang/Object;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/powervision/base/permission/util/MPermissionUtil;->findNeverAskAgainPermissions(Landroid/app/Activity;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static needPermission(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 122
    invoke-static {p0, p1, v0}, Lcom/powervision/base/permission/MPermission;->needPermission(Landroid/app/Activity;I[Ljava/lang/String;)V

    return-void
.end method

.method public static needPermission(Landroid/app/Activity;I[Ljava/lang/String;)V
    .locals 0

    .line 114
    invoke-static {p0, p1, p2}, Lcom/powervision/base/permission/MPermission;->requestPermissions(Ljava/lang/Object;I[Ljava/lang/String;)V

    return-void
.end method

.method public static needPermission(Landroidx/fragment/app/Fragment;ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 126
    invoke-static {p0, p1, v0}, Lcom/powervision/base/permission/MPermission;->needPermission(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;)V

    return-void
.end method

.method public static needPermission(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;)V
    .locals 0

    .line 118
    invoke-static {p0, p1, p2}, Lcom/powervision/base/permission/MPermission;->requestPermissions(Ljava/lang/Object;I[Ljava/lang/String;)V

    return-void
.end method

.method public static onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 0

    .line 159
    invoke-static {p0, p1, p2, p3}, Lcom/powervision/base/permission/MPermission;->requestResult(Ljava/lang/Object;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public static onRequestPermissionsResult(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;[I)V
    .locals 0

    .line 164
    invoke-static {p0, p1, p2, p3}, Lcom/powervision/base/permission/MPermission;->requestResult(Ljava/lang/Object;I[Ljava/lang/String;[I)V

    return-void
.end method

.method private static requestPermissions(Ljava/lang/Object;I[Ljava/lang/String;)V
    .locals 1

    .line 131
    invoke-static {}, Lcom/powervision/base/permission/util/MPermissionUtil;->isOverMarshmallow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-static {p0, p1}, Lcom/powervision/base/permission/MPermission;->doExecuteSuccess(Ljava/lang/Object;I)V

    return-void

    .line 135
    :cond_0
    invoke-static {p0}, Lcom/powervision/base/permission/util/MPermissionUtil;->getActivity(Ljava/lang/Object;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/powervision/base/permission/util/MPermissionUtil;->findDeniedPermissions(Landroid/app/Activity;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 138
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 139
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 140
    check-cast p0, Landroid/app/Activity;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 142
    :cond_1
    instance-of v0, p0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_2

    .line 143
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 146
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not supported"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 149
    :cond_3
    invoke-static {p0, p1}, Lcom/powervision/base/permission/MPermission;->doExecuteSuccess(Ljava/lang/Object;I)V

    :goto_0
    return-void
.end method

.method private static requestResult(Ljava/lang/Object;I[Ljava/lang/String;[I)V
    .locals 3

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 169
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_1

    .line 170
    aget v2, p3, v1

    if-eqz v2, :cond_0

    .line 171
    aget-object v2, p2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 176
    invoke-static {p0}, Lcom/powervision/base/permission/util/MPermissionUtil;->getActivity(Ljava/lang/Object;)Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/powervision/base/permission/util/MPermissionUtil;->hasNeverAskAgainPermission(Landroid/app/Activity;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 177
    invoke-static {p0, p1}, Lcom/powervision/base/permission/MPermission;->doExecuteFailAsNeverAskAgain(Ljava/lang/Object;I)V

    goto :goto_1

    .line 179
    :cond_2
    invoke-static {p0, p1}, Lcom/powervision/base/permission/MPermission;->doExecuteFail(Ljava/lang/Object;I)V

    goto :goto_1

    .line 182
    :cond_3
    invoke-static {p0, p1}, Lcom/powervision/base/permission/MPermission;->doExecuteSuccess(Ljava/lang/Object;I)V

    :goto_1
    return-void
.end method

.method public static with(Landroid/app/Activity;)Lcom/powervision/base/permission/MPermission;
    .locals 1

    .line 87
    new-instance v0, Lcom/powervision/base/permission/MPermission;

    invoke-direct {v0, p0}, Lcom/powervision/base/permission/MPermission;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static with(Landroidx/fragment/app/Fragment;)Lcom/powervision/base/permission/MPermission;
    .locals 1

    .line 91
    new-instance v0, Lcom/powervision/base/permission/MPermission;

    invoke-direct {v0, p0}, Lcom/powervision/base/permission/MPermission;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public addRequestCode(I)Lcom/powervision/base/permission/MPermission;
    .locals 0

    .line 100
    iput p1, p0, Lcom/powervision/base/permission/MPermission;->requestCode:I

    return-object p0
.end method

.method public varargs permissions([Ljava/lang/String;)Lcom/powervision/base/permission/MPermission;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/powervision/base/permission/MPermission;->permissions:[Ljava/lang/String;

    return-object p0
.end method

.method public request()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/powervision/base/permission/MPermission;->object:Ljava/lang/Object;

    iget v1, p0, Lcom/powervision/base/permission/MPermission;->requestCode:I

    iget-object v2, p0, Lcom/powervision/base/permission/MPermission;->permissions:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/powervision/base/permission/MPermission;->requestPermissions(Ljava/lang/Object;I[Ljava/lang/String;)V

    return-void
.end method
