import { HttpClient, HttpParams } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { FinalBorrowedBook } from '../models/final-borrowed-book';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class PhieuMuonService {
  

  constructor(private http: HttpClient) { }
  private apiUrl = 'http://localhost:8080/phieuMuon';
  postPhieuMuon(pmRequest: FinalBorrowedBook): Observable<any> {
    return this.http.post<any>(this.apiUrl, pmRequest);
  }
  getChiTietPhieuMuonByHoiVienId(maHV: string): Observable<any> {
    return this.http.get<any>(`${this.apiUrl}/${maHV}`);
  }
  getPhieuMuonByHoiVienId(maHV: string, maVach: string): Observable<any> {
    const params = new HttpParams()
        .set('maHV', maHV)  
        .set('maVach', maVach);
    
    return this.http.get<any>(`${this.apiUrl}/findPhieuMuon`, { params });
}
findAll(): Observable<any[]> {
  return this.http.get<any[]>(this.apiUrl);
}
findAllDangMuon(): Observable<any[]> {
  return this.http.get<any[]>(`${this.apiUrl}/findAllPhieuMuonDangMuon`);
}
getAllChiTietPhieuMuon(): Observable<any> {
  return this.http.get<any>(`${this.apiUrl}/getAllChiTietPhieuMuon`);
}

findChiTietPhieuMuonById(maPM: number): Observable<any> {
  return this.http.get(`${this.apiUrl}/findChiTietPhieuMuonByPmId`, {
    params: { maPM: maPM.toString() }
  });
}
}
