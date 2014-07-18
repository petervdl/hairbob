.class Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$1;
.super Ljava/lang/Object;
.source "CompanionPlaceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->setupDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;)V
    .registers 2

    .prologue
    .line 114
    iput-object p1, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$1;->this$0:Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 117
    const-string/jumbo v2, "geo:%1$.6f,%2$.6f?q="

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$1;->this$0:Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;

    # getter for: Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlace:Lcom/airbnb/android/models/localcompanion/CompanionPlace;
    invoke-static {v5}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->access$000(Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;)Lcom/airbnb/android/models/localcompanion/CompanionPlace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/models/localcompanion/CompanionPlace;->getLat()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$1;->this$0:Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;

    # getter for: Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlace:Lcom/airbnb/android/models/localcompanion/CompanionPlace;
    invoke-static {v5}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->access$000(Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;)Lcom/airbnb/android/models/localcompanion/CompanionPlace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/models/localcompanion/CompanionPlace;->getLng()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$1;->this$0:Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;

    # getter for: Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlace:Lcom/airbnb/android/models/localcompanion/CompanionPlace;
    invoke-static {v5}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->access$000(Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;)Lcom/airbnb/android/models/localcompanion/CompanionPlace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/models/localcompanion/CompanionPlace;->getShortAddress()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, " "

    const-string/jumbo v7, "+"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "geoIntent":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 119
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$1;->this$0:Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 120
    return-void
.end method
