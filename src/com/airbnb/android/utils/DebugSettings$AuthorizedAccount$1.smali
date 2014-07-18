.class final Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount$1;
.super Ljava/lang/Object;
.source "DebugSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;->getAccounts(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;)I
    .registers 5
    .param p1, "lhs"    # Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;
    .param p2, "rhs"    # Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;

    .prologue
    .line 204
    # getter for: Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;->mUsername:Ljava/lang/String;
    invoke-static {p1}, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;->access$000(Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;)Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;->mUsername:Ljava/lang/String;
    invoke-static {p2}, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;->access$000(Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 201
    check-cast p1, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount$1;->compare(Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;)I

    move-result v0

    return v0
.end method
