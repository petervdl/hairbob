.class Lcom/airbnb/android/adapters/ReviewsAdapter$1;
.super Ljava/lang/Object;
.source "ReviewsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/ReviewsAdapter;->getClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/ReviewsAdapter;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/ReviewsAdapter;)V
    .registers 2

    .prologue
    .line 110
    iput-object p1, p0, Lcom/airbnb/android/adapters/ReviewsAdapter$1;->this$0:Lcom/airbnb/android/adapters/ReviewsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 115
    .local v0, "listingOrUserId":J
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 117
    .local v2, "viewId":I
    const v3, 0x7f080456

    if-ne v2, v3, :cond_2a

    .line 118
    iget-object v3, p0, Lcom/airbnb/android/adapters/ReviewsAdapter$1;->this$0:Lcom/airbnb/android/adapters/ReviewsAdapter;

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/ReviewsAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/adapters/ReviewsAdapter$1;->this$0:Lcom/airbnb/android/adapters/ReviewsAdapter;

    invoke-virtual {v4}, Lcom/airbnb/android/adapters/ReviewsAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "user_profile"

    invoke-static {v4, v0, v1, v5}, Lcom/airbnb/android/activities/ROActivity;->intentForUserId(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 124
    :goto_29
    return-void

    .line 119
    :cond_2a
    const v3, 0x7f0804a9

    if-ne v2, v3, :cond_47

    .line 120
    iget-object v3, p0, Lcom/airbnb/android/adapters/ReviewsAdapter$1;->this$0:Lcom/airbnb/android/adapters/ReviewsAdapter;

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/ReviewsAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/adapters/ReviewsAdapter$1;->this$0:Lcom/airbnb/android/adapters/ReviewsAdapter;

    invoke-virtual {v4}, Lcom/airbnb/android/adapters/ReviewsAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/airbnb/android/activities/ListingDetailsActivity;->intentForListingById(Landroid/content/Context;Ljava/lang/Long;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_29

    .line 122
    :cond_47
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "reviews adapter, unrecognized View ID, check that the tags are being set for the corresponding views"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
