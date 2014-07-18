.class Lcom/airbnb/android/activities/HospitalityWebViewActivity$JavaScriptInterface$1;
.super Ljava/lang/Object;
.source "HospitalityWebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/HospitalityWebViewActivity$JavaScriptInterface;->initializeCheckList(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/activities/HospitalityWebViewActivity$JavaScriptInterface;

.field final synthetic val$jsonString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/HospitalityWebViewActivity$JavaScriptInterface;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 153
    iput-object p1, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity$JavaScriptInterface$1;->this$1:Lcom/airbnb/android/activities/HospitalityWebViewActivity$JavaScriptInterface;

    iput-object p2, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity$JavaScriptInterface$1;->val$jsonString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity$JavaScriptInterface$1;->this$1:Lcom/airbnb/android/activities/HospitalityWebViewActivity$JavaScriptInterface;

    iget-object v1, v1, Lcom/airbnb/android/activities/HospitalityWebViewActivity$JavaScriptInterface;->this$0:Lcom/airbnb/android/activities/HospitalityWebViewActivity;

    iget-object v2, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity$JavaScriptInterface$1;->val$jsonString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->onReceiveChecklist(Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_9} :catch_a

    .line 161
    :goto_9
    return-void

    .line 158
    :catch_a
    move-exception v0

    .line 159
    .local v0, "e":Lorg/json/JSONException;
    # getter for: Lcom/airbnb/android/activities/HospitalityWebViewActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/airbnb/android/activities/HospitalityWebViewActivity;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/airbnb/android/utils/BuildHelper;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method
