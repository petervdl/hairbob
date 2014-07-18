.class Lcom/airbnb/android/activities/WhyHostFtueActivity$1;
.super Ljava/lang/Object;
.source "WhyHostFtueActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/WhyHostFtueActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/WhyHostFtueActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/WhyHostFtueActivity;)V
    .registers 2

    .prologue
    .line 34
    iput-object p1, p0, Lcom/airbnb/android/activities/WhyHostFtueActivity$1;->this$0:Lcom/airbnb/android/activities/WhyHostFtueActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1b

    .line 39
    invoke-static {}, Lcom/airbnb/android/analytics/FtueAnalytics;->trackWhyHostLYS()V

    .line 40
    iget-object v0, p0, Lcom/airbnb/android/activities/WhyHostFtueActivity$1;->this$0:Lcom/airbnb/android/activities/WhyHostFtueActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/WhyHostFtueActivity;->finish()V

    .line 41
    iget-object v0, p0, Lcom/airbnb/android/activities/WhyHostFtueActivity$1;->this$0:Lcom/airbnb/android/activities/WhyHostFtueActivity;

    iget-object v1, p0, Lcom/airbnb/android/activities/WhyHostFtueActivity$1;->this$0:Lcom/airbnb/android/activities/WhyHostFtueActivity;

    sget-object v2, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->NewListing:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    invoke-static {v1, v2}, Lcom/airbnb/android/activities/ListYourSpaceActivity;->intentForState(Landroid/content/Context;Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/WhyHostFtueActivity;->startActivity(Landroid/content/Intent;)V

    .line 43
    :cond_1b
    return-void
.end method
