.class Lcom/airbnb/android/adapters/TravelInboxAdapter$2;
.super Ljava/lang/Object;
.source "TravelInboxAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/TravelInboxAdapter;->addAll(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/airbnb/android/interfaces/TravelInboxItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/TravelInboxAdapter;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/TravelInboxAdapter;)V
    .registers 2

    .prologue
    .line 271
    iput-object p1, p0, Lcom/airbnb/android/adapters/TravelInboxAdapter$2;->this$0:Lcom/airbnb/android/adapters/TravelInboxAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/airbnb/android/interfaces/TravelInboxItem;Lcom/airbnb/android/interfaces/TravelInboxItem;)I
    .registers 7
    .param p1, "lhs"    # Lcom/airbnb/android/interfaces/TravelInboxItem;
    .param p2, "rhs"    # Lcom/airbnb/android/interfaces/TravelInboxItem;

    .prologue
    .line 274
    invoke-interface {p1}, Lcom/airbnb/android/interfaces/TravelInboxItem;->getTravelInboxTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 275
    .local v0, "lhTime":Ljava/lang/Long;
    invoke-interface {p2}, Lcom/airbnb/android/interfaces/TravelInboxItem;->getTravelInboxTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 276
    .local v1, "rhTime":Ljava/lang/Long;
    invoke-virtual {v1, v0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 271
    check-cast p1, Lcom/airbnb/android/interfaces/TravelInboxItem;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/airbnb/android/interfaces/TravelInboxItem;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/adapters/TravelInboxAdapter$2;->compare(Lcom/airbnb/android/interfaces/TravelInboxItem;Lcom/airbnb/android/interfaces/TravelInboxItem;)I

    move-result v0

    return v0
.end method
