.class Lcom/airbnb/android/activities/HospitalityWebViewActivity$JavaScriptInterface;
.super Ljava/lang/Object;
.source "HospitalityWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/activities/HospitalityWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JavaScriptInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/HospitalityWebViewActivity;


# direct methods
.method private constructor <init>(Lcom/airbnb/android/activities/HospitalityWebViewActivity;)V
    .registers 2

    .prologue
    .line 149
    iput-object p1, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity$JavaScriptInterface;->this$0:Lcom/airbnb/android/activities/HospitalityWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/android/activities/HospitalityWebViewActivity;Lcom/airbnb/android/activities/HospitalityWebViewActivity$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/airbnb/android/activities/HospitalityWebViewActivity;
    .param p2, "x1"    # Lcom/airbnb/android/activities/HospitalityWebViewActivity$1;

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/airbnb/android/activities/HospitalityWebViewActivity$JavaScriptInterface;-><init>(Lcom/airbnb/android/activities/HospitalityWebViewActivity;)V

    return-void
.end method


# virtual methods
.method public initializeCheckList(Ljava/lang/String;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 152
    move-object v0, p1

    .line 153
    .local v0, "jsonString":Ljava/lang/String;
    iget-object v1, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity$JavaScriptInterface;->this$0:Lcom/airbnb/android/activities/HospitalityWebViewActivity;

    new-instance v2, Lcom/airbnb/android/activities/HospitalityWebViewActivity$JavaScriptInterface$1;

    invoke-direct {v2, p0, v0}, Lcom/airbnb/android/activities/HospitalityWebViewActivity$JavaScriptInterface$1;-><init>(Lcom/airbnb/android/activities/HospitalityWebViewActivity$JavaScriptInterface;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 163
    return-void
.end method
