.class public Lcom/airbnb/android/utils/TextHelper;
.super Ljava/lang/Object;
.source "TextHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValidEmail(Ljava/lang/CharSequence;)Z
    .registers 2
    .param p0, "email"    # Ljava/lang/CharSequence;

    .prologue
    .line 30
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static isValidPhoneNumber(Ljava/lang/CharSequence;)Z
    .registers 2
    .param p0, "email"    # Ljava/lang/CharSequence;

    .prologue
    .line 34
    sget-object v0, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static join(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 20
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_21

    .line 21
    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    :cond_21
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 26
    .end local v1    # "s":Ljava/lang/String;
    :cond_25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static pluralize(III)I
    .registers 4
    .param p0, "count"    # I
    .param p1, "singularResId"    # I
    .param p2, "pluralResId"    # I

    .prologue
    .line 14
    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    .end local p1    # "singularResId":I
    :goto_3
    return p1

    .restart local p1    # "singularResId":I
    :cond_4
    move p1, p2

    goto :goto_3
.end method

.method public static pluralize(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "count"    # I
    .param p1, "singular"    # Ljava/lang/String;
    .param p2, "plural"    # Ljava/lang/String;

    .prologue
    .line 10
    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    .end local p1    # "singular":Ljava/lang/String;
    :goto_3
    return-object p1

    .restart local p1    # "singular":Ljava/lang/String;
    :cond_4
    move-object p1, p2

    goto :goto_3
.end method
