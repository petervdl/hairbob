.class Lcom/airbnb/android/adapters/MyWishListListingsAdapter$5$1;
.super Ljava/lang/Object;
.source "MyWishListListingsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/MyWishListListingsAdapter$5;->onResponse(Lcom/airbnb/android/requests/UpdateWishListRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/adapters/MyWishListListingsAdapter$5;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/MyWishListListingsAdapter$5;)V
    .registers 2

    .prologue
    .line 348
    iput-object p1, p0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$5$1;->this$1:Lcom/airbnb/android/adapters/MyWishListListingsAdapter$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 351
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/AirbnbApi;->fetchWishLists(Lcom/airbnb/android/requests/RequestListener;)V

    .line 352
    return-void
.end method
