.class Lcom/airbnb/android/adapters/DiscoverAdapter$4$1;
.super Ljava/lang/Object;
.source "DiscoverAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/DiscoverAdapter$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/adapters/DiscoverAdapter$4;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$eligibleNonLmbEnabledListings:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/DiscoverAdapter$4;Landroid/content/Context;Ljava/util/List;)V
    .registers 4

    .prologue
    .line 233
    iput-object p1, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$4$1;->this$1:Lcom/airbnb/android/adapters/DiscoverAdapter$4;

    iput-object p2, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$4$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$4$1;->val$eligibleNonLmbEnabledListings:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 236
    iget-object v1, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$4$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$4$1;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$4$1;->val$eligibleNonLmbEnabledListings:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/airbnb/android/activities/ManageListingActivity;->intentForIBSell(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 237
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 238
    return-void
.end method
