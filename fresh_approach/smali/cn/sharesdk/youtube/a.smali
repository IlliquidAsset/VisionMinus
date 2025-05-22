.class public Lcn/sharesdk/youtube/a;
.super Ljava/lang/Object;
.source "YoutebeUtil.java"


# direct methods
.method public static a([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, " "

    return-object p0

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 75
    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_1

    .line 76
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
