.class Lcom/airbnb/android/AirbnbApplication$1;
.super Ljava/lang/Object;
.source "AirbnbApplication.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/AirbnbApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/requests/RequestListener",
        "<",
        "Lcom/airbnb/android/requests/GetCountryFromIPRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/AirbnbApplication;


# direct methods
.method constructor <init>(Lcom/airbnb/android/AirbnbApplication;)V
    .registers 2

    .prologue
    .line 87
    iput-object p1, p0, Lcom/airbnb/android/AirbnbApplication$1;->this$0:Lcom/airbnb/android/AirbnbApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 91
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/GetCountryFromIPRequest;)V
    .registers 4
    .param p1, "response"    # Lcom/airbnb/android/requests/GetCountryFromIPRequest;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/airbnb/android/AirbnbApplication$1;->this$0:Lcom/airbnb/android/AirbnbApplication;

    iget-object v1, p1, Lcom/airbnb/android/requests/GetCountryFromIPRequest;->country:Ljava/lang/String;

    # setter for: Lcom/airbnb/android/AirbnbApplication;->mCountry:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/airbnb/android/AirbnbApplication;->access$002(Lcom/airbnb/android/AirbnbApplication;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 87
    check-cast p1, Lcom/airbnb/android/requests/GetCountryFromIPRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/AirbnbApplication$1;->onResponse(Lcom/airbnb/android/requests/GetCountryFromIPRequest;)V

    return-void
.end method
