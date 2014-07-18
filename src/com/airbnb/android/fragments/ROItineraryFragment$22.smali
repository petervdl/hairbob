.class final Lcom/airbnb/android/fragments/ROItineraryFragment$22;
.super Ljava/lang/Object;
.source "ROItineraryFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROItineraryFragment;->setupMap(Landroid/content/Context;Landroid/view/View;Lcom/airbnb/android/models/Listing;Landroid/view/View$OnClickListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$finalAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 736
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$22;->val$finalAddress:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 740
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$22;->val$finalAddress:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/MiscUtils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    .line 741
    const/4 v0, 0x1

    return v0
.end method
