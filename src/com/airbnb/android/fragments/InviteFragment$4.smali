.class Lcom/airbnb/android/fragments/InviteFragment$4;
.super Ljava/lang/Object;
.source "InviteFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/InviteFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/InviteFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/InviteFragment;)V
    .registers 2

    .prologue
    .line 202
    iput-object p1, p0, Lcom/airbnb/android/fragments/InviteFragment$4;->this$0:Lcom/airbnb/android/fragments/InviteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/airbnb/android/fragments/InviteFragment$4;->this$0:Lcom/airbnb/android/fragments/InviteFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/InviteFragment$4;->this$0:Lcom/airbnb/android/fragments/InviteFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/InviteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "https://m.airbnb.com/terms/referrals?hide_nav=true&locale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0e0621

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/activities/WebViewActivity;->intentForUrlAndTitle(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/InviteFragment;->startActivity(Landroid/content/Intent;)V

    .line 207
    return-void
.end method
