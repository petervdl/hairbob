.class public final Lcom/airbnb/android/fragments/ListingDetailsFragment$ListingUnlistedDialog;
.super Lcom/airbnb/android/fragments/ZenDialog;
.source "ListingDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/ListingDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListingUnlistedDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1132
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ZenDialog;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/ListingDetailsFragment$ListingUnlistedDialog;
    .registers 4

    .prologue
    .line 1135
    new-instance v0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    new-instance v1, Lcom/airbnb/android/fragments/ListingDetailsFragment$ListingUnlistedDialog;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/ListingDetailsFragment$ListingUnlistedDialog;-><init>()V

    invoke-direct {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;-><init>(Lcom/airbnb/android/fragments/ZenDialog;)V

    const v1, 0x7f0e03e3

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e03df

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e0215

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withSingleButton(IILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/ListingDetailsFragment$ListingUnlistedDialog;

    return-object v0
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1144
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment$ListingUnlistedDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1145
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ListingDetailsFragment$ListingUnlistedDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 1147
    :cond_d
    return-void
.end method
