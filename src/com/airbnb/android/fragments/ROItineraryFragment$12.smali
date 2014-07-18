.class Lcom/airbnb/android/fragments/ROItineraryFragment$12;
.super Ljava/lang/Object;
.source "ROItineraryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROItineraryFragment;->doStaticMapView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROItineraryFragment;)V
    .registers 2

    .prologue
    .line 386
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$12;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 390
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$12;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    # getter for: Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v4}, Lcom/airbnb/android/fragments/ROItineraryFragment;->access$000(Lcom/airbnb/android/fragments/ROItineraryFragment;)Lcom/airbnb/android/models/Reservation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v2

    .line 392
    .local v2, "listing":Lcom/airbnb/android/models/Listing;
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$12;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    # getter for: Lcom/airbnb/android/fragments/ROItineraryFragment;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v4}, Lcom/airbnb/android/fragments/ROItineraryFragment;->access$000(Lcom/airbnb/android/fragments/ROItineraryFragment;)Lcom/airbnb/android/models/Reservation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/models/Reservation;->isAccepted()Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 393
    const-string/jumbo v3, "http://maps.google.com/maps?q="

    .line 395
    .local v3, "url":Ljava/lang/String;
    :try_start_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getAddress()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "utf-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_34
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_19 .. :try_end_34} :catch_65

    move-result-object v3

    .line 403
    :goto_35
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 404
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.google.android.apps.maps"

    const-string/jumbo v5, "com.google.android.maps.MapsActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$12;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    invoke-virtual {v4}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_92

    .line 408
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$12;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    invoke-virtual {v4, v1}, Lcom/airbnb/android/fragments/ROItineraryFragment;->startActivity(Landroid/content/Intent;)V

    .line 418
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "url":Ljava/lang/String;
    :goto_64
    return-void

    .line 396
    .restart local v3    # "url":Ljava/lang/String;
    :catch_65
    move-exception v0

    .line 397
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "loc:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_35

    .line 411
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_92
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$12;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Lcom/airbnb/android/fragments/ROItineraryFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_64

    .line 415
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "url":Ljava/lang/String;
    :cond_a4
    iget-object v4, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$12;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    iget-object v5, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$12;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    invoke-virtual {v5}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v2, v6}, Lcom/airbnb/android/activities/PropertyMapActivity;->intentForListing(Landroid/content/Context;Lcom/airbnb/android/models/Listing;Z)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/airbnb/android/fragments/ROItineraryFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_64
.end method
