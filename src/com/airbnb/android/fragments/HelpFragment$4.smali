.class Lcom/airbnb/android/fragments/HelpFragment$4;
.super Ljava/lang/Object;
.source "HelpFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/HelpFragment;->setupViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/HelpFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/HelpFragment;)V
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, Lcom/airbnb/android/fragments/HelpFragment$4;->this$0:Lcom/airbnb/android/fragments/HelpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "http://m.airbnb.com/terms/privacy_policy?hide_nav=true&locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/airbnb/android/fragments/HelpFragment$4;->this$0:Lcom/airbnb/android/fragments/HelpFragment;

    iget-object v2, p0, Lcom/airbnb/android/fragments/HelpFragment$4;->this$0:Lcom/airbnb/android/fragments/HelpFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/HelpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0e05d8

    invoke-static {v2, v0, v3}, Lcom/airbnb/android/activities/WebViewActivity;->intentForUrlAndTitle(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/HelpFragment;->startActivity(Landroid/content/Intent;)V

    .line 100
    return-void
.end method
