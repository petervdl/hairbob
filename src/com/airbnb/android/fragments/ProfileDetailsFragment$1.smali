.class Lcom/airbnb/android/fragments/ProfileDetailsFragment$1;
.super Ljava/lang/Object;
.source "ProfileDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ProfileDetailsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ProfileDetailsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ProfileDetailsFragment;)V
    .registers 2

    .prologue
    .line 89
    iput-object p1, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/airbnb/android/fragments/ProfileDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/ProfileDetailsFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/airbnb/android/activities/VerifiedIdActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ProfileDetailsFragment;->startActivity(Landroid/content/Intent;)V

    .line 93
    return-void
.end method
