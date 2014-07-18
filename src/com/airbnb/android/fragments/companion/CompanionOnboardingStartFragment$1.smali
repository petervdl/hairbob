.class Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment$1;
.super Ljava/lang/Object;
.source "CompanionOnboardingStartFragment.java"

# interfaces
.implements Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;)V
    .registers 2

    .prologue
    .line 70
    iput-object p1, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment$1;->this$0:Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickLink(I)V
    .registers 4
    .param p1, "linkIndex"    # I

    .prologue
    .line 73
    new-instance v0, Lcom/airbnb/android/requests/LocalCompanionTermsRequest;

    new-instance v1, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment$1$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment$1$1;-><init>(Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment$1;)V

    invoke-direct {v0, v1}, Lcom/airbnb/android/requests/LocalCompanionTermsRequest;-><init>(Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v0}, Lcom/airbnb/android/requests/LocalCompanionTermsRequest;->execute()V

    .line 84
    return-void
.end method
