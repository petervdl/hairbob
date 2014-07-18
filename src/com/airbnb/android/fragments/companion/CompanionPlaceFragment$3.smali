.class Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$3;
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
    .line 141
    iput-object p1, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$3;->this$0:Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 144
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "webIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$3;->this$0:Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;

    # getter for: Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->mCompanionPlace:Lcom/airbnb/android/models/localcompanion/CompanionPlace;
    invoke-static {v1}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->access$000(Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;)Lcom/airbnb/android/models/localcompanion/CompanionPlace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/localcompanion/CompanionPlace;->getWebsite()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 146
    iget-object v1, p0, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment$3;->this$0:Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/companion/CompanionPlaceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 147
    return-void
.end method
